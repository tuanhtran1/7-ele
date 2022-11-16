package com.example.controller.customer;

import com.example.service.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "orderControllerOfCustomer")
public class OrderController {
	
	@Autowired
	private ICartService cartService;
	
//	@RequestMapping(value = "customer/checkout/{userId}", method = RequestMethod.GET)
//	public ModelAndView cartUser(@PathVariable Long userId) {
//		ModelAndView mav = new ModelAndView("customer/checkout");
//		mav.addObject("disable", "on"); //disable quickview + supporthelp
//		mav.addObject("listCart", cartService.getCartsByUserId(userId));
//		return mav;
//	}

    @RequestMapping(value = "/customer/order", method = RequestMethod.GET)
    public ModelAndView getProducts() {
        ModelAndView mav = new ModelAndView("customer/order-product");

        return mav;
    }
}
