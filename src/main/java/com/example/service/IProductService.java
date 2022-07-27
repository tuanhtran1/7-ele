package com.example.service;

import com.example.dto.ProductDTO;
import com.example.dto.request.ProductRequest;

import java.util.List;
import java.util.Map;

public interface IProductService {
    List<ProductDTO> findAll();

    ProductDTO findById(Long id);

    ProductDTO insert(ProductRequest productRequest);

    ProductDTO update(ProductRequest productRequest);

    void delete(Long id);

    List<ProductDTO> findByCategoryCode(String code);
}
