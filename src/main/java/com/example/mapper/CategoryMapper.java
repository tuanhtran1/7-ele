package com.example.mapper;

import com.example.dto.CategoryDTO;
import com.example.dto.OrderDTO;
import com.example.entity.CategoryEntity;
import com.example.entity.OrderEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CategoryMapper {

    @Autowired
    private ModelMapper modelMapper;

    public CategoryDTO toDTO(CategoryEntity entity) {
        CategoryDTO categoryDTO = new CategoryDTO();
        categoryDTO = modelMapper.map(entity, CategoryDTO.class);
        return categoryDTO;
    }

}