package com.example.dto.request;

import lombok.Data;

import javax.validation.constraints.NotNull;
import java.util.List;

@Data
public class ReceivedNoteRequest {
	
	@NotNull
	private Long userId;
	@NotNull
	private String warehouseId;
	@NotNull
	private List<ProductReceivedNoteRequest> products;
}
