package com.example.controller.admin;

import com.example.dto.OrderDetailDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class OrderDetailController {

    @Autowired
    private RestTemplate restTemplate;

    @RequestMapping(value = "/admin/orderdetail-list/{id}", method = RequestMethod.GET)
    public ModelAndView getOrderDetailHome(@PathVariable Long id) {
        ModelAndView mav = new ModelAndView("admin/orderdetail-list");
        List<OrderDetailDTO> detailDTOList = restTemplate.getForObject("/api/orderdetail?idOrder=" + id, List.class);
        mav.addObject("orderDetails", detailDTOList);

        return mav;
    }
}
