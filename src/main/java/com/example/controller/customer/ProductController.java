package com.example.controller.customer;

import com.example.dto.ProductDTO;
import com.example.dto.request.ProductFilterRequest;
import com.example.model.page.ProductPage;
import com.example.service.ICartService;
import com.example.service.ICategoryService;
import com.example.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "productControllerOfCustomer")
public class ProductController {
	
	@Autowired
	private RestTemplate restTemplate;
	
	@Autowired
	private ICategoryService categoryService;
	
	@Autowired
	private IProductService productService;

    @RequestMapping(value = "/customer/products", method = RequestMethod.GET)
    public ModelAndView productUser(ProductFilterRequest req) {
        ModelAndView mav = new ModelAndView("customer/product-list");
        mav.addObject("disable", "on"); //disable quickview + supporthelp
	
		mav.addObject("categories",categoryService.getALlList());

		mav.addObject("products", productService.findAll());
		
        return mav;
    }
	
	@RequestMapping(value = "/customer/product-detail/{idProduct}", method = RequestMethod.GET)
	public ModelAndView productDetail(@PathVariable Long idProduct) {
		ModelAndView mav = new ModelAndView("customer/product-detail");
		mav.addObject("disable", "on"); //disable quickview + supporthelp
		
		System.out.println(idProduct);
		mav.addObject("categories",categoryService.getALlList());
		
		mav.addObject("productDetail", productService.findById(idProduct));
		
		return mav;
	}
}
