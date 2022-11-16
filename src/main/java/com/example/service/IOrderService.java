package com.example.service;

import com.example.dto.OrderDTO;
import com.example.enums.StatusOrder;
import com.example.report.StatisticOrder;

import java.util.List;
import java.util.Map;

public interface IOrderService {
    List<OrderDTO> getListOrders();
    
    List<OrderDTO> getOrdersByUser();
    
    void changeStatusOrder(Long id, StatusOrder statusOrder);

    OrderDTO insertOrder(Map<String, Object> params);
    
    StatisticOrder getStatisticOrder();
}