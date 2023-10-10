package com.example.service.impl;

import com.example.dto.CartDTO;
import com.example.dto.request.CartRequest;
import com.example.entity.CartEntity;
import com.example.entity.ProductEntity;
import com.example.entity.UserEntity;
import com.example.exception.CalculateException;
import com.example.exception.ExistException;
import com.example.exception.NotFoundException;
import com.example.mapper.CartMapper;
import com.example.repository.CartRepository;
import com.example.repository.ProductRepository;
import com.example.repository.UserRepository;
import com.example.service.ICartService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@Transactional
@RequiredArgsConstructor
public class CartService implements ICartService {
	
    private final CartRepository cartRepository;
	
    private final CartMapper cartMapper;
	
    private final UserRepository userRepository;
	
    private final ProductRepository productRepository;
	
	@Override
    public CartDTO insertCart(Map<String, Object> params) {
        CartEntity cartEntity = new CartEntity();
        //user
        Long userId = Long.valueOf(params.getOrDefault("userId", null).toString());
        UserEntity userEntity = userRepository.findById(userId).get();

        //product
        Long productId = Long.valueOf(params.getOrDefault("productId", null).toString());
        ProductEntity productEntity = productRepository.findById(productId).get();
        
        if(cartRepository.findByProduct_IdAndUser_Id(productId,userId).isPresent()) throw new ExistException("Giỏ hàng của bạn đã có sản phẩm này");
			//cart
        Integer quantity = Integer.valueOf(params.getOrDefault("quantity", null).toString());
        productEntity.setQuantity(productEntity.getQuantity() - quantity); //update quantity from current product

        cartEntity.setProduct(productEntity);
        cartEntity.setUser(userEntity);
        cartEntity.setQuantity(quantity);
        cartEntity.setTotalMoney(productEntity.getSalePrice() * quantity);

        return cartMapper.toDTO(cartRepository.save(cartEntity));
    }

    @Override
    public CartDTO updateCart(CartRequest cartRequest) {
        Optional<CartEntity> cartEntityOpt = cartRepository.findById(cartRequest.getId());
        if (!cartEntityOpt.isPresent()) throw new NotFoundException("Cart is not exist!");
        else {
            return cartMapper.toDTO(cartEntityOpt.map(cartEntity -> {
                ProductEntity productEntity = cartEntity.getProduct();
                if (cartRequest.getQuantity() != null) {
                    if (cartRequest.getQuantity() > cartEntity.getProduct().getQuantity()) {
                        throw new CalculateException("The number of products is not enough !");
                    } else {
                        productEntity.setQuantity(productEntity.getQuantity() + cartEntity.getQuantity() - cartRequest.getQuantity());
                        cartEntity.setQuantity(cartRequest.getQuantity());
                        cartEntity.setTotalMoney(cartEntity.getQuantity() * productEntity.getSalePrice());
                        cartEntity.setProduct(productEntity);
                    }
                }
                return cartRepository.save(cartEntity);
            }).get());
        }
    }

    @Override
    public void deleteCart(Long id) {
        Optional<CartEntity> cartEntityOpt = cartRepository.findById(id);
        if (!cartEntityOpt.isPresent()) throw new NotFoundException("Cart is not exist!");
        else {
            ProductEntity productEntity = cartEntityOpt.get().getProduct();
            productEntity.setQuantity(productEntity.getQuantity() + cartEntityOpt.get().getQuantity());
            productRepository.save(productEntity);
            cartRepository.delete(cartEntityOpt.get());
        }
    }

    @Override
    @Transactional(readOnly = true)
    public List<CartDTO> getCartsByUserId(Long id) {
        if (cartRepository.findByUser_Id(id).size() == 0) throw new NotFoundException("Cart is empty!");
        else {
            return cartRepository.findByUser_Id(id).stream()
                    .map(cart -> cartMapper.toDTOIgnoreInfoUser(cart))
                    .collect(Collectors.toList());
        }
    }
}
