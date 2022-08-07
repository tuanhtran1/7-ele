package com.example.repository;

import com.example.entity.ProductEntity;
import com.example.repository.custom.ProductRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<ProductEntity, Long>, ProductRepositoryCustom {

    List<ProductEntity> findByCategory_Id(Long id);

    List<ProductEntity> findByCategory_Code(String code);

    List<ProductEntity> findByDiscountGreaterThan(Float value);
}
