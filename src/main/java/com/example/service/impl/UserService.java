package com.example.service.impl;

import com.example.dto.UserDTO;
import com.example.dto.request.UserRequest;
import com.example.entity.UserEntity;
import com.example.exception.DuplicateException;
import com.example.mapper.UserMapper;
import com.example.repository.RoleRepository;
import com.example.repository.UserRepository;
import com.example.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService implements IUserService {

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Override
    public UserDTO login(UserRequest userRequest) {
        UserEntity userEntity = userRepository.findByEmailAndStatus(userRequest.getEmail(), 1);
        if (userEntity != null) {// tồn tại email trong db
            if (!userEntity.getPassword().equals(userRequest.getPassword())) return null;
        } else return null;
        return userMapper.toDTO(userEntity);
    }

    @Override
    public UserDTO createUser(UserRequest req, String roleCode) {
        Optional<UserEntity> userEntityOtp = Optional.ofNullable(userRepository.findByEmailAndStatus(req.getEmail(), 1));
        if (userEntityOtp.isPresent()) throw new DuplicateException("Email already exists");
        else {
            UserEntity user = new UserEntity();
            user.setEmail(req.getEmail());
            user.setPassword(passwordEncoder.encode(req.getPassword()));
            user.setRole(roleRepository.findByCode(roleCode));

            //active user
            user.setStatus(1);

            if (req.getFullName() == null) {
                user.setName(req.getEmail());
            } else user.setName(req.getFullName());

            return userMapper.toDTO(userRepository.save(user));
        }
    }
}
