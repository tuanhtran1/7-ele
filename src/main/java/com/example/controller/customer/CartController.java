package com.example.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class CartController {

    @RequestMapping(value = "customer/cart", method = RequestMethod.GET)
    public ModelAndView homePage() {
        ModelAndView mav = new ModelAndView("customer/cart");
        mav.addObject("disable", "on"); //disable quickview + supporthelp

        return mav;
    }
}
