package com.example.mapper;

import com.example.dto.WareHouseDTO;
import com.example.entity.WareHouseEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class WarehouseMapper {

    @Autowired
    private ModelMapper modelMapper;

    public WareHouseDTO toDTO(WareHouseEntity entity) {
		WareHouseDTO wareHouseDTO = new WareHouseDTO();
		wareHouseDTO = modelMapper.map(entity, WareHouseDTO.class);
        return wareHouseDTO;
    }

}