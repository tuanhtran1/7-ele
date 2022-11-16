package com.example.api.customer;

import com.example.dto.UserDTO;
import com.example.dto.request.MailRequest;
import com.example.dto.request.UserRequest;
import com.example.dto.response.MailResponse;
import com.example.enums.RoleEnums;
import com.example.service.IUserService;
import com.example.service.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/customer")
public class CustomerAPI {

    @Autowired
    private IUserService userService;
    
    @Autowired
	private MailService mailService;

    //register customer
    @PostMapping("/register")
    public UserDTO registerManager(@RequestBody UserRequest req) {
        return userService.createUser(req, RoleEnums.CUSTOMER.toString());
    }
	
	@PostMapping("/sendingEmail")
	public MailResponse sendEmail(@RequestBody MailRequest request) {
		Map<String, Object> model = new HashMap<>();
		model.put("name", request.getName());
		model.put("location", "Ho Chi Minh city, Viet Nam");
		return mailService.sendEmail(request, model);
	}
}
