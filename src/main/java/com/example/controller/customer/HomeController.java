package com.example.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "homeControllerOfCustomer")
public class HomeController {

    @RequestMapping(value = "/customer/home", method = RequestMethod.GET)
    public ModelAndView homePage() {
        ModelAndView mav = new ModelAndView("customer/home");
        return mav;
    }

    @RequestMapping(value = "/customer/login", method = RequestMethod.GET)
    public ModelAndView loginPage() {
        ModelAndView mav = new ModelAndView("customer/login");
        mav.addObject("disable","on");
        return mav;
    }

    private void setting(ModelAndView mav){

    }
}
