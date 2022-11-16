package com.example.dto.request;

import lombok.Data;

@Data
public class ProductReceivedNoteRequest {
	
	private String productId;
	
	private String price;
	
	private String total;
	
}
