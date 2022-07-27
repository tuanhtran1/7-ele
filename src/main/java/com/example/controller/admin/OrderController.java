package com.example.controller.admin;

import com.example.dto.OrderDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller(value = "orderControllerOfAdmin")
public class OrderController {

    @Autowired
    private RestTemplate restTemplate;

    @RequestMapping(value = "/admin/order-list", method = RequestMethod.GET)
    public ModelAndView getProducts() {
        ModelAndView mav = new ModelAndView("admin/order-list");
        List<OrderDTO> orders = restTemplate.getForObject("/api/orders", List.class);
        mav.addObject("ordersList", orders);
        return mav;
    }


}
