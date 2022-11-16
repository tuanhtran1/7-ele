package com.example.service;

import com.example.dto.WareHouseDTO;

import java.util.List;

public interface IWareHouseService {
	List<WareHouseDTO> findAll();
}
