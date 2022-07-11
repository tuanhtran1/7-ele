package com.example.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "product")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductEntity extends BaseEntity {

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "quantity")
    private Integer quantity;

    @Column(name = "saleprice")
    private Float salePrice;

    @Column(name = "discount")
    private Float discount;

    @Column(name = "price")
    private Float price;

    @Column(name = "image")
    private String image;

    @OneToMany(mappedBy = "product", cascade = CascadeType.REMOVE)
    private List<OrderDetailEntity> orderDetails;

    @ManyToOne
    @JoinColumn(name = "categoryid")
    private CategoryEntity category;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    private List<CartEntity> carts;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    private List<ImageEntity> images;
}
