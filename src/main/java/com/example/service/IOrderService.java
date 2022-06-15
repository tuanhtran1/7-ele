package com.example.service;

import com.example.dto.OrderDTO;

import java.util.List;
import java.util.Map;

public interface IOrderService {
    List<OrderDTO> getListOrders();

    OrderDTO addOrder(Map<Long,Integer> productTouch, String address, Long userId);
}
