package com.example.controller.customer;

import com.example.security.utils.SecurityUtils;
import com.example.service.ICartService;
import com.example.service.IProductService;
import com.example.service.impl.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller(value = "homeControllerOfCustomer")
public class HomeController {

    @Autowired
    private IProductService productService;

    @Autowired
    private ICartService cartService;

    @Autowired
    private RestTemplate restTemplate;

    @RequestMapping(value = "customer/home", method = RequestMethod.GET)
    public ModelAndView homePage() {
        ModelAndView mav = new ModelAndView("customer/home");
        mav.addObject("categories", restTemplate.getForObject("/api/categories", List.class));
        mav.addObject("productsOfDiscount",productService.getListOfDiscount());
        mav.addObject("productsOfNewAdd",productService.getListNewAdd());


        return mav;
    }

//    @RequestMapping(value = "/customer/login", method = RequestMethod.GET)
//    public ModelAndView loginPage() {
//        ModelAndView mav = new ModelAndView("customer/login");
//        mav.addObject("disable", "on"); //disable quickview + supporthelp
//        return mav;
//    }

    private void setting(ModelAndView mav) {

    }
}
