package com.example.dto.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductRequest {
    private Long id;

    private String name;

    private String description;

    private Integer quantity;

    private Float price;

    private Float discount;

    private String categoryCode; //Code

    private MultipartFile fileImg;
}
