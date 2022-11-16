package com.example.repository;

import com.example.entity.CartEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface CartRepository extends JpaRepository<CartEntity, Long> {

    List<CartEntity> findByUser_Id(Long id);
    
    Optional<CartEntity> findByProduct_IdAndUser_Id(Long product, Long userId);

    void deleteAllByUser_Id(Long id);

}
