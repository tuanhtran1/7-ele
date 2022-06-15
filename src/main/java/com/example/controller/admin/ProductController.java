package com.example.controller.admin;

import com.example.dto.ProductDTO;
import com.example.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import java.util.List;

@Controller
public class ProductController {

    @Autowired
    private RestTemplate restTemplate;

    @Autowired
    private IProductService productService;

    @RequestMapping(value = "/admin/product-list", method = RequestMethod.GET)
    public ModelAndView getProducts() {
        ModelAndView mav = new ModelAndView("admin/product-list");
        List<ProductDTO> products = restTemplate.getForObject("/api/products", List.class);
        mav.addObject("products", products);
        return mav;
    }

}
