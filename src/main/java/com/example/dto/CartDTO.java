package com.example.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartDTO {
    private Long id;
    private Integer quantity;
    private Float totalMoney;
    private ProductDTO product;
//    private UserDTO user;
}
