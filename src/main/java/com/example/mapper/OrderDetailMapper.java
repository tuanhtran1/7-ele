package com.example.mapper;

import com.example.dto.OrderDTO;
import com.example.dto.OrderDetailDTO;
import com.example.entity.OrderDetailEntity;
import com.example.entity.OrderEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class OrderDetailMapper {
    @Autowired
    private ModelMapper modelMapper;

    public OrderDetailDTO toDTO(OrderDetailEntity entity) {
        OrderDetailDTO orderDetailDTO = new OrderDetailDTO();
        orderDetailDTO = modelMapper.map(entity, OrderDetailDTO.class);
        return orderDetailDTO;
    }
}
