package com.example.service.impl;

import com.example.dto.CategoryDTO;
import com.example.mapper.CategoryMapper;
import com.example.repository.CategoryRepository;
import com.example.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CategoryService implements ICategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private CategoryMapper categoryMapper;

    @Override
    public List<CategoryDTO> getALlList() {
        return categoryRepository.findAll().stream()
                .map(item -> categoryMapper.toDTO(item))
                .collect(Collectors.toList());
    }
}
