package com.example.controller.customer;

import com.example.dto.CartDTO;
import com.example.service.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class CartController {
	
	@Autowired
	private ICartService cartService;

    @RequestMapping(value = "customer/cart/{userId}", method = RequestMethod.GET)
    public ModelAndView cartUser(@PathVariable Long userId, @RequestParam(value = "coupou", required = false) String coupon) {
        ModelAndView mav = new ModelAndView("customer/cart");
        mav.addObject("disable", "on"); //disable quickview + supporthelp
        return mav;
    }
}
