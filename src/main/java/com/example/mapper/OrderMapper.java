package com.example.mapper;

import com.example.dto.OrderDTO;
import com.example.entity.OrderEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class OrderMapper {

    @Autowired
    private ModelMapper modelMapper;

    public OrderDTO toDTO(OrderEntity entity) {
        OrderDTO orderDTO = new OrderDTO();
        orderDTO = modelMapper.map(entity, OrderDTO.class);
        return orderDTO;
    }

}