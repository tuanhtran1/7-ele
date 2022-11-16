package com.example.api;

import com.example.dto.WareHouseDTO;
import com.example.service.IWareHouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class WareHouseAPI {
	
	@Autowired
	private IWareHouseService wareHouseService;
	
	@GetMapping("/warehouse")
	public List<WareHouseDTO> getListWarehouse() {
		return wareHouseService.findAll();
	}
}
