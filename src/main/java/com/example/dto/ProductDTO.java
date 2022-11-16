package com.example.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductDTO {

    private Long id;

    private String name;

    private String description;

    private Integer quantity;

    private Float price;

    private Float discount;

    private Float salePrice;

    private String image;

    private CategoryDTO category;
    
    private String author;
}
