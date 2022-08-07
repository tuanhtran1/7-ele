package com.example.controller.admin;

import com.example.security.utils.SecurityUtils;
import com.example.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {

    @Autowired
    private IProductService productService;

    @RequestMapping(value = "/admin/home", method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView mav = new ModelAndView("admin/product-list");
        mav.addObject("products", productService.findAll());
        System.out.println(SecurityUtils.getPrincipal().getFullName());
        return mav;
    }

}
