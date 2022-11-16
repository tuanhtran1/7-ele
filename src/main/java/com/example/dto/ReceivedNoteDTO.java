package com.example.dto;

import lombok.Data;

import java.util.Date;

@Data
public class ReceivedNoteDTO{
	
	private Long id;
	
	private UserDTO user;
	
	private WareHouseDTO warehouse;
	
	private Date createdDate;
	
}
