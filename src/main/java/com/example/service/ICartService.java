package com.example.service;

import com.example.dto.CartDTO;
import com.example.dto.request.CartRequest;

import java.util.List;
import java.util.Map;

public interface ICartService {
    //all object (admin + customer)
    CartDTO insertCart(Map<String, Object> params);

    CartDTO updateCart(CartRequest cartRequest);

    void deleteCart(Long id);

    List<CartDTO> getCartsByUserId(Long id);
}
