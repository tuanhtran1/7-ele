package com.example.api;

import com.example.dto.OrderDetailDTO;
import com.example.service.IOrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class OrderDetailAPI {

    @Autowired
    private IOrderDetailService orderDetailService;

    @GetMapping("/orderdetail")
    public List<OrderDetailDTO> getAllOrderDetail(@RequestParam Long idOrder) {
        return orderDetailService.findByOrderId(idOrder);
    }
}
