package com.example.api;

import com.example.dto.OrderDTO;
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
    public List<OrderDTO> getAllProduct() {
        return orderService.getListOrders();
    }

    @PostMapping("/order")
    public OrderDTO addOrder(@RequestParam Map<Long,Integer> products, @RequestParam String address, @RequestParam Long userId){
        return orderService.addOrder(products,address,userId);
    }
}
