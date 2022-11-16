package com.example.dto;

import lombok.Data;

import java.util.Date;

@Data
public class ReceivedNoteDetailDTO {
	
	private Long id;
	
	private Float priceReceive;
	
	private Integer total;
	
	private Float totalPrice;
	
	private UserDTO user;
	
	private WareHouseDTO warehouse;
	
	private Date createdDate;
	
	private ProductDTO product;
	
}
