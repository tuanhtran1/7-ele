package com.example.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "orders")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderEntity extends BaseEntity {

    @Column(name = "totalmoney")
    private Float totalMoney;

    @Column(name = "address")
    private String address;

    @OneToMany(mappedBy = "orderProduct", cascade = CascadeType.ALL)
    private List<OrderDetailEntity> orderDetails;

    @ManyToOne
    @JoinColumn(name = "userid")
    private UserEntity user;

}
