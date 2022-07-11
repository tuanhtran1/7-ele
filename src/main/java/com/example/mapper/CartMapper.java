package com.example.mapper;

import com.example.dto.CartDTO;
import com.example.dto.ProductDTO;
import com.example.entity.CartEntity;
import com.example.entity.ProductEntity;
import org.modelmapper.ModelMapper;
import org.modelmapper.PropertyMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CartMapper {

    @Autowired
    private ModelMapper modelMapper;

    public CartDTO toDTO(CartEntity entity) {
        CartDTO cartDTO = new CartDTO();
        cartDTO = modelMapper.map(entity,CartDTO.class);
        return cartDTO;
    }

    public CartDTO toDTOIgnoreInfoUser(CartEntity entity) {
        CartDTO cartDTO = new CartDTO();
        cartDTO = modelMapper.map(entity,CartDTO.class);
//        cartDTO.setUser(null);
        return cartDTO;
    }

}
