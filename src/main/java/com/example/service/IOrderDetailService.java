package com.example.service;

import com.example.dto.OrderDetailDTO;

import java.util.List;

public interface IOrderDetailService {
    List<OrderDetailDTO> findByOrderId(Long id);
}
