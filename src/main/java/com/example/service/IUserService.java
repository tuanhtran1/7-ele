package com.example.service;

import com.example.dto.UserDTO;
import com.example.dto.request.UserRequest;

public interface IUserService {
    UserDTO login(UserRequest userRequest);
}
