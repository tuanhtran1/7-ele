package com.example.service.impl;

import com.example.dto.OrderDetailDTO;
import com.example.entity.OrderDetailEntity;
import com.example.mapper.OrderDetailMapper;
import com.example.repository.OrderDetailRepository;
import com.example.service.IOrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class OrderDetailService implements IOrderDetailService {

    @Autowired
    private OrderDetailMapper orderDetailMapper;

    @Autowired
    private OrderDetailRepository orderDetailRepository;

    @Override
    public List<OrderDetailDTO> findByOrderId(Long id) {
        List<OrderDetailDTO> orderDetailDTOs = new ArrayList<>();
        List<OrderDetailEntity> orderDetailEntities = orderDetailRepository.findByOrderId(id);
        for (OrderDetailEntity item:orderDetailEntities )
        {
            orderDetailDTOs.add(orderDetailMapper.toDTO(item));
        }
        return orderDetailDTOs;
    }
}
