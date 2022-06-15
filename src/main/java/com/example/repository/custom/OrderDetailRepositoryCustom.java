package com.example.repository.custom;

import com.example.entity.OrderDetailEntity;

import java.util.List;

public interface OrderDetailRepositoryCustom {
    List<OrderDetailEntity> findByOrderId(Long id);
}
