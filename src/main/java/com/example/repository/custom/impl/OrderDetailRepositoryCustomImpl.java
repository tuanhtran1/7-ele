package com.example.repository.custom.impl;

import com.example.entity.OrderDetailEntity;
import com.example.repository.custom.OrderDetailRepositoryCustom;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public class OrderDetailRepositoryCustomImpl implements OrderDetailRepositoryCustom {

    @PersistenceContext
    private EntityManager entityManager;


    @Override
    public List<OrderDetailEntity> findByOrderId(Long id) {
        StringBuilder JPQL = new StringBuilder("SELECT o FROM OrderDetailEntity o WHERE o.orderProduct.id= " + id);
        return entityManager.createQuery(JPQL.toString(),OrderDetailEntity.class).getResultList();
    }
}
