package com.example.controller.customer;

import javax.servlet.http.HttpServletRequest;

import com.example.dto.OrderDTO;
import com.example.enums.PaymentType;
import com.example.enums.PaypalPaymentIntent;
import com.example.enums.PaypalPaymentMethod;
import com.example.security.utils.SecurityUtils;
import com.example.service.*;
import com.example.utils.PaypalUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class PaymentController {
	
	public static final String URL_PAYPAL_SUCCESS = "customer/pay/success";
	public static final String URL_PAYPAL_CANCEL = "customer/pay/cancel";
	public static Map<String, Object> mapDetail = new HashMap<>();
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private IProductService productService;
	
	@Autowired
	private ICartService cartService;
	
	@Autowired
	private RestTemplate restTemplate;
	
	@Autowired
	private PaypalService paypalService;
	
	@Autowired
	private IOrderService orderService;
	
	@Autowired
	private IOrderDetailService orderDetailService;
	
	@RequestMapping(value = "customer/checkout/{userId}", method = RequestMethod.GET)
	public ModelAndView cartUser(@PathVariable Long userId) {
		ModelAndView mav = new ModelAndView("customer/checkout");
		mav.addObject("disable", "on"); //disable quickview + supporthelp
		mav.addObject("listCart", cartService.getCartsByUserId(userId));
		return mav;
	}
	@PostMapping("/paypal")
	public String payWithPaypal(HttpServletRequest request, @RequestParam("price") double price,
								@RequestParam("address") String address){
		mapDetail.put("address", address);
		String cancelUrl = PaypalUtils.getBaseURL(request) + "/" + URL_PAYPAL_CANCEL;
		String successUrl = PaypalUtils.getBaseURL(request) + "/" + URL_PAYPAL_SUCCESS;
		try {
			Payment payment = paypalService.createPayment(
					price,
					"USD",
					PaypalPaymentMethod.paypal,
					PaypalPaymentIntent.sale,
					"payment description",
					cancelUrl,
					successUrl);
			for(Links links : payment.getLinks()){
				if(links.getRel().equals("approval_url")){
					return "redirect:" + links.getHref();
				}
			}
		} catch (PayPalRESTException e) {
			log.error(e.getMessage());
		}
		return "redirect:/";
	}
	@GetMapping(URL_PAYPAL_CANCEL)
	public ModelAndView cancelPay(){
		ModelAndView mav = new ModelAndView("customer/home");
		mav.addObject("categories", restTemplate.getForObject("/api/categories", List.class));
		mav.addObject("productsOfDiscount",productService.getListOfDiscount());
		mav.addObject("productsOfNewAdd",productService.getListNewAdd());
		
		return mav;
	}
	@GetMapping(URL_PAYPAL_SUCCESS)
	public ModelAndView successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId,
								   @RequestParam("token") String tokenPayment){
		try {
			Payment payment = paypalService.executePayment(paymentId, payerId);
			if(payment.getState().equals("approved")){
				ModelAndView mav = new ModelAndView("customer/order-complete");
				mav.addObject("disable", "on"); //disable quickview + supporthelp
				mapDetail.put("userId", SecurityUtils.getPrincipal().getId());
				mapDetail.put("paymentId", paymentId);
				mapDetail.put("payerId",payerId);
				mapDetail.put("token",tokenPayment);
				mapDetail.put("paymentType", PaymentType.PAYPAL);
				OrderDTO orderDTO = orderService.insertOrder(mapDetail);
				mav.addObject("order", orderDTO);
				mav.addObject("orderDetail", orderDetailService.findByOrderId(orderDTO.getId()));
				return mav;
			}
		} catch (PayPalRESTException e) {
			log.error(e.getMessage());
		}
		return new ModelAndView("customer/home");
	}
	
	@PostMapping("/customer/cash")
	public ModelAndView payWithCash(@RequestParam("price") double price,
							  @RequestParam("address") String address){
		ModelAndView mav = new ModelAndView("customer/order-complete");
		mapDetail.put("address", address);
		mapDetail.put("userId", SecurityUtils.getPrincipal().getId());
		mapDetail.put("paymentType", PaymentType.CASH);
		mav.addObject("order", orderService.insertOrder(mapDetail));
		mav.addObject("disable", "on"); //disable quickview + supporthelp
		return mav;
	}
}
