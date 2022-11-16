package com.example.service;

import com.example.dto.ProductDTO;
import com.example.dto.request.ProductFilterRequest;
import com.example.dto.request.ProductRequest;
import com.example.report.StatisticProduct;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Map;

public interface IProductService {
    List<ProductDTO> findAll();
	
	Page<ProductDTO> findAll(ProductFilterRequest req, Pageable pageable);
	
	int totalItem();
	
	ProductDTO findById(Long id);

    ProductDTO insert(ProductRequest productRequest);

    ProductDTO update(ProductRequest productRequest);

    void delete(Long id);

    List<ProductDTO> findByCategoryId(Long id);

    //feature

    List<ProductDTO> getListOfDiscount();

    List<ProductDTO> getListNewAdd();
    
    //statistic
	StatisticProduct getStatisticProduct();
}
