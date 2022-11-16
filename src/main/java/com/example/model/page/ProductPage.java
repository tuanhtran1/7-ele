package com.example.model.page;

import com.example.dto.ProductDTO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
public class ProductPage {
    private int page;
    private int totalPage;
 	private List<ProductDTO> result;
}
