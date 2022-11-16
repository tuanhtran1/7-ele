package com.example.api.admin;

import com.example.dto.UserDTO;
import com.example.dto.request.UserRequest;
import com.example.enums.RoleEnums;
import com.example.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
@RequestMapping("/api/admin")
public class AdminAPI {

    @Autowired
    private IUserService userService;

    //register admin
    @PostMapping("/register")
    public UserDTO registerManager(@Valid @RequestBody UserRequest req) {
        return userService.createUser(req, RoleEnums.ADMIN.toString());
    }
}
