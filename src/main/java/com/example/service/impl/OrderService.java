package com.example.service.impl;

import com.example.dto.OrderDTO;
import com.example.entity.*;
import com.example.enums.PaymentType;
import com.example.enums.StatusOrder;
import com.example.exception.NotFoundException;
import com.example.mapper.OrderMapper;
import com.example.report.StatisticOrder;
import com.example.repository.*;
import com.example.security.utils.SecurityUtils;
import com.example.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Date;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@Transactional
public class OrderService implements IOrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private CartRepository cartRepository;

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private OrderDetailRepository orderDetailRepository;

    @Override
    @Transactional(readOnly = true)
    public List<OrderDTO> getListOrders() {
        if (orderRepository.findAll().size() == 0) {
            throw new NotFoundException("List order is empty!");
        } else {
            return orderRepository.findAll().stream()
                    .map(item -> orderMapper.toDTO(item))
                    .collect(Collectors.toList());
        }
    }
	
	@Override
	public List<OrderDTO> getOrdersByUser() {
		return orderRepository.findByUser_Id(SecurityUtils.getPrincipal().getId())
				.stream().map(orderMapper::toDTO)
				.collect(Collectors.toList());
	}
	
	@Override
	public void changeStatusOrder(Long id, StatusOrder statusOrder) {
		Optional<OrderEntity> orderOtp = orderRepository.findById(id);
		if(!orderOtp.isPresent()) throw new NotFoundException("Order is exist");
		else {
			orderOtp.get().setStatus(statusOrder);
			orderRepository.save(orderOtp.get());
		}
	}
	
	@Override
    public OrderDTO insertOrder(Map<String, Object> params) {
        OrderEntity orderEntity = new OrderEntity();
        String address = (String) params.getOrDefault("address", null);
        orderEntity.setAddress(address);
        orderEntity.setCreatedDate(Date.from(LocalDate.now().atStartOfDay().atZone(ZoneId.systemDefault()).toInstant()));

        //user have carts
        Long userId = Long.valueOf(params.getOrDefault("userId", null).toString());
        UserEntity userEntity = userRepository.findById(userId).get();
        orderEntity.setUser(userEntity);

        List<CartEntity> cartEntities = userEntity.getCarts();
        List<OrderDetailEntity> orderDetailEntities = orderEntity.getOrderDetails();
        Float totalMoney = 0F;

        //accept carts -> order details -> delete carts
        for (CartEntity item : cartEntities) {
			ProductEntity productEntity = item.getProduct();
            OrderDetailEntity orderDetailEntity = new OrderDetailEntity();
            orderDetailEntity.setOrderProduct(orderEntity); //id
            orderDetailEntity.setProduct(item.getProduct());
            orderDetailEntity.setQuantity(item.getQuantity());
            productEntity.setTotalOrder(productEntity.getTotalOrder() + item.getQuantity());
            productRepository.save(productEntity);
            orderDetailEntity.setTotalMoney(item.getTotalMoney());
            orderDetailEntities.add(orderDetailEntity);
            totalMoney += item.getTotalMoney();
        }
        cartRepository.deleteAllByUser_Id(userId);
        orderEntity.setOrderDetails(orderDetailEntities);
        orderEntity.setTotalMoney(totalMoney);

        //status waiting for admin accept
		orderEntity.setStatus(StatusOrder.WAITING);
		
		String paymentId, payerId, token;
		
		paymentId = (String) params.getOrDefault("paymentId", null);
		payerId = (String) params.getOrDefault("payerId", null);
		token = (String) params.getOrDefault("token", null);
		PaymentType paymentType = (PaymentType) params.getOrDefault("paymentType", null);
		
		orderEntity.setPayerId(payerId);
		orderEntity.setPaymentId(paymentId);
		orderEntity.setPaymentType(paymentType);
		orderEntity.setTokenPayment(token);
		
        return orderMapper.toDTO(orderRepository.save(orderEntity));
    }
	
	@Override
	public StatisticOrder getStatisticOrder() {
		return orderRepository.orderStatistic();
	}
}
