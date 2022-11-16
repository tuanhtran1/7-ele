package com.example.dto.request;

import lombok.Data;

@Data
public class ProductFilterRequest {
	
	private String keyword;
	
	private Double priceFrom;
	
	private Double priceTo;
	
	private String categoryCode;
}
