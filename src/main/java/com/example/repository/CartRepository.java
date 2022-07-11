package com.example.repository;

import com.example.entity.CartEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CartRepository extends JpaRepository<CartEntity, Long> {

    List<CartEntity> findByUser_Id(Long id);

    void deleteAllByUser_Id(Long id);

}
