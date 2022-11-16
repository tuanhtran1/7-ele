package com.example.controller;

import com.example.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AccountController {
	
	@Autowired
	private IOrderService orderService;

    @RequestMapping(value = "/customer/login", method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView mav = new ModelAndView("customer/login");
        mav.addObject("disable", "on"); //disable quickview + supporthelp
        return mav;
    }
    
	@RequestMapping(value = "/customer/register", method = RequestMethod.GET)
	public ModelAndView register() {
		ModelAndView mav = new ModelAndView("customer/register");
		mav.addObject("disable", "on"); //disable quickview + supporthelp
		
		return mav;
	}
	
	@RequestMapping(value = "/customer/account", method = RequestMethod.GET)
	public ModelAndView accountCustomer() {
		ModelAndView mav = new ModelAndView("customer/account");
		mav.addObject("disable", "on"); //disable quickview + supporthelp
		
		mav.addObject("order", orderService.getOrdersByUser());
		return mav;
	}
}
