package com.example.repository;

import com.example.entity.OrderDetailEntity;
import com.example.repository.custom.OrderDetailRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderDetailRepository extends JpaRepository<OrderDetailEntity, Long>, OrderDetailRepositoryCustom {
}
