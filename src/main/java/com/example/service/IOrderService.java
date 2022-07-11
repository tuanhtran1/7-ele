package com.example.service;

import com.example.dto.OrderDTO;

import java.util.List;
import java.util.Map;

public interface IOrderService {
    List<OrderDTO> getListOrders();

    OrderDTO insertOrder(Map<String, Object> params);
}
