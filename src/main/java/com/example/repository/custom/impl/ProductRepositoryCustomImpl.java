package com.example.repository.custom.impl;

import com.example.entity.ProductEntity;
import com.example.repository.custom.ProductRepositoryCustom;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class ProductRepositoryCustomImpl implements ProductRepositoryCustom {

    @PersistenceContext
    private EntityManager entityManager;


    @Override
    public List<ProductEntity> getProductNewAdd() {
        String jpql = "SELECT * FROM product ORDER BY id DESC LIMIT 20";
        return entityManager.createNativeQuery(jpql.toString(), ProductEntity.class).getResultList();
    }
}
