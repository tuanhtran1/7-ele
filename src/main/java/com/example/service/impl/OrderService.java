package com.example.service.impl;

import com.example.dto.OrderDTO;
import com.example.entity.OrderDetailEntity;
import com.example.entity.OrderEntity;
import com.example.entity.ProductEntity;
import com.example.mapper.OrderMapper;
import com.example.repository.OrderDetailRepository;
import com.example.repository.OrderRepository;
import com.example.repository.ProductRepository;
import com.example.repository.UserRepository;
import com.example.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Date;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class OrderService implements IOrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private OrderDetailRepository orderDetailRepository;

    @Override
    public List<OrderDTO> getListOrders() {
        List<OrderDTO> orderDTOs = new ArrayList<>();
        List<OrderEntity> orderEntities = orderRepository.findAll();
        for (OrderEntity item : orderEntities) {
            orderDTOs.add(orderMapper.toDTO(item));
        }
        return orderDTOs;
    }

    //Map<Long,Integer> productTouch : Long -> id, Interger -> quantity
    @Override
    @Transactional
    public OrderDTO addOrder(Map<Long,Integer> productTouch, String address, Long userId) {
        OrderEntity orderEntity = new OrderEntity();
        orderEntity.setAddress(address);
        orderEntity.setUser(userRepository.findById(userId).get());
        orderEntity.setCreatedDate(Date.from(LocalDate.now().atStartOfDay().atZone(ZoneId.systemDefault()).toInstant()));

        orderRepository.save(orderEntity);
        Float totalMoney = 0F;
        for(Map.Entry<Long,Integer> entry: productTouch.entrySet()) {
            try {
                Long id = Long.parseLong(String.valueOf(entry.getKey()));
                Integer quantity = Integer.parseInt(String.valueOf(entry.getValue()));

                ProductEntity productEntity = productRepository.findById(id).get();
                productEntity.setQuantity(productEntity.getQuantity() - quantity);
                productRepository.save(productEntity);

                OrderDetailEntity orderDetailEntity = new OrderDetailEntity();
                orderDetailEntity.setQuantity(quantity);
                orderDetailEntity.setTotalMoney(productEntity.getPrice()*quantity);
                orderDetailEntity.setProduct(productEntity);
                orderDetailEntity.setOrderProduct(orderEntity);
                orderDetailRepository.save(orderDetailEntity);

                totalMoney += orderDetailEntity.getTotalMoney();

            }catch (Exception e)
            {
                continue;
            }
        }
        orderEntity.setTotalMoney(totalMoney);
        return orderMapper.toDTO(orderRepository.save(orderEntity));
    }
}
