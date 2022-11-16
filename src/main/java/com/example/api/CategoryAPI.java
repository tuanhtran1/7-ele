package com.example.api;

import com.example.dto.CategoryDTO;
import com.example.service.impl.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class CategoryAPI {

    @Autowired
    private CategoryService categoryService;

    @GetMapping("/categories")
    public List<CategoryDTO> getListCategory() {
        return categoryService.getALlList();
    }
}
