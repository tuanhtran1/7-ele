package com.example.repository;

import com.example.entity.WareHouseEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WareHouseRepository extends JpaRepository<WareHouseEntity, Long> {
}
