package com.example.service.impl;

import com.example.dto.WareHouseDTO;
import com.example.mapper.WarehouseMapper;
import com.example.repository.WareHouseRepository;
import com.example.service.IWareHouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class WareHouseService implements IWareHouseService {

    @Autowired
    private WareHouseRepository wareHouseRepository;

    @Autowired
    private WarehouseMapper warehouseMapper;

    @Override
    public List<WareHouseDTO> findAll() {
        return wareHouseRepository.findAll().stream()
                .map(item -> warehouseMapper.toDTO(item))
                .collect(Collectors.toList());
    }

}
