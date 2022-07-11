package com.example.api;

import com.example.dto.UserDTO;
import com.example.dto.request.UserRequest;
import com.example.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class UserAPI {

    @Autowired
    private IUserService userService;

    @PostMapping("/user/login")
    public UserDTO login(@RequestBody UserRequest userRequest) {
        return userService.login(userRequest);
    }
}
