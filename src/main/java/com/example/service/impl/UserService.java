package com.example.service.impl;

import com.example.dto.UserDTO;
import com.example.dto.request.UserRequest;
import com.example.entity.UserEntity;
import com.example.mapper.UserMapper;
import com.example.repository.UserRepository;
import com.example.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDTO login(UserRequest userRequest) {
        UserEntity userEntity = userRepository.findByEmail(userRequest.getEmail());
        if (userEntity != null) {// tồn tại email trong db
            if (!userEntity.getPassword().equals(userRequest.getPassword())) return null;
        } else return null;
        return userMapper.toDTO(userEntity);
    }
}
