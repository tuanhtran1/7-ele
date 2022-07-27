package com.example.entity;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "image")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ImageEntity extends BaseEntity {

    @Column(name = "image")
    private String image;

    @ManyToOne
    @JoinColumn(name = "productid")
    private ProductEntity product;
}