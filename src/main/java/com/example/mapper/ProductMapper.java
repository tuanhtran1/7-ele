package com.example.mapper;

import com.example.dto.ProductDTO;
import com.example.dto.request.ProductRequest;
import com.example.entity.ProductEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ProductMapper {

    @Autowired
    private ModelMapper modelMapper;

    public ProductDTO toDTO(ProductEntity entity) {
        ProductDTO productDTO = new ProductDTO();
        productDTO = modelMapper.map(entity, ProductDTO.class);
        return productDTO;
    }

    public ProductEntity toEntity(ProductRequest productRequest) {
        return modelMapper.map(productRequest, ProductEntity.class);
    }

}
