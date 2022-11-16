package com.example.controller.admin;

import com.example.security.utils.SecurityUtils;
import com.example.service.IOrderService;
import com.example.service.IProductService;
import com.example.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {

    @Autowired
    private IProductService productService;
    
    @Autowired
	private IUserService userService;
    
    @Autowired
	private IOrderService orderService;

    @RequestMapping(value = "/admin/home", method = RequestMethod.GET)
    public ModelAndView home() {
        ModelAndView mav = new ModelAndView("admin/product-list");
        mav.addObject("products", productService.findAll());
        return mav;
    }
    
	@RequestMapping(value = "/admin/dashboard", method = RequestMethod.GET)
	public ModelAndView dashboard() {
		ModelAndView mav = new ModelAndView("admin/dashboard");
		mav.addObject("statisticOrder", orderService.getStatisticOrder());
		mav.addObject("statisticProduct", productService.getStatisticProduct());
		mav.addObject("statisticUser", userService.getStatisticUser());
		return mav;
	}

}
