package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AccountController {

    @RequestMapping(value = "/login-admin", method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView mav = new ModelAndView("admin/login");
        return mav;
    }
}
