package com.example.entity;


import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "cartproduct", uniqueConstraints = @UniqueConstraint(columnNames = {"userid", "productid"}))
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartEntity extends BaseEntity {

    @Column(name = "quantity")
    private Integer quantity;

    @Column(name = "totalmoney")
    private Float totalMoney;

    @ManyToOne
    @JoinColumn(name = "userid")
    private UserEntity user;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "productid")
    private ProductEntity product;

}
