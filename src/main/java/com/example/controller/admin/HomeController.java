package com.example.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {

    @RequestMapping(value = "/admin/home", method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView mav = new ModelAndView("oder-list");
        return mav;
    }

}
