package com.example.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "orderdetail", uniqueConstraints = @UniqueConstraint(columnNames = {"orderid", "productid"}))
@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderDetailEntity extends BaseEntity {

    @Column(name="quantity")
    private Integer quantity;

    @Column(name="totalmoney")
    private Float totalMoney;

    @ManyToOne
    @JoinColumn(name = "orderid")
    private OrderEntity orderProduct;

    @ManyToOne
    @JoinColumn(name = "productid")
    private ProductEntity product;
}
