package com.example.mapper;

import com.example.dto.UserDTO;
import com.example.entity.UserEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserMapper {

    @Autowired
    private ModelMapper modelMapper;

    public UserDTO toDTO(UserEntity entity) {
        if (entity == null) return null;
        return modelMapper.map(entity, UserDTO.class);
    }
}
