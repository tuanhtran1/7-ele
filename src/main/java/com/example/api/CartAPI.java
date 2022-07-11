package com.example.api;

import com.example.dto.CartDTO;
import com.example.dto.request.CartRequest;
import com.example.service.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api")
public class CartAPI {

    @Autowired
    ICartService cartService;

    @GetMapping("/carts")
    public List<CartDTO> getCartsByUserId(@RequestParam("userId") Long id) {
        return cartService.getCartsByUserId(id);
    }

    @PostMapping("/cart")
    public CartDTO insertCart(@RequestParam Map<String, Object> params) {
        CartDTO cartDTO = cartService.insertCart(params);
        return cartDTO;
    }

    @PutMapping("/cart")
    public CartDTO updateCart(@RequestBody CartRequest cartRequest) {
        CartDTO cartResponse = cartService.updateCart(cartRequest);
        return cartResponse;
    }

    @DeleteMapping("cart/{id}")
    public ResponseEntity<?> deleteCart(@PathVariable Long id) {
        cartService.deleteCart(id);
        return ResponseEntity.ok().build();
    }
}
