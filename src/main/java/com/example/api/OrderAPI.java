package com.example.api;

import com.example.dto.OrderDTO;
import com.example.enums.StatusOrder;
import com.example.report.StatisticOrder;
import com.example.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api")
public class OrderAPI {

    @Autowired
    private IOrderService orderService;

    @GetMapping("/orders")
    public List<OrderDTO> getAllOrders() {
        return orderService.getListOrders();
    }

    @PostMapping("/order")
    public OrderDTO insertOrderByUser(@RequestParam Map<String, Object> params) {
        return orderService.insertOrder(params);
    }
	
	@PutMapping("/order/confirm")
	public void confirmOrder(@RequestParam Long id) {
    	orderService.changeStatusOrder(id, StatusOrder.ACCEPTED);
	}
	
	@PutMapping("/order/cancel")
	public void cancelOrder(@RequestParam Long id) {
		orderService.changeStatusOrder(id, StatusOrder.CANCELED);
	}
    
    @GetMapping("/order/statistic")
	public StatisticOrder getStatisticOrder() {
		return orderService.getStatisticOrder();
	}
}
