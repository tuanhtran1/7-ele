package com.example.entity;


import com.example.enums.PaymentType;
import com.example.enums.StatusOrder;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.ArrayList;
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

    @Enumerated(EnumType.STRING)
    @Column(name = "status")
    private StatusOrder status;
    
    @Column(name="payment_id")
	private String paymentId;
    
    @Column(name="payer_id")
	private String payerId;
    
    @Column(name = "token_payment")
	private String tokenPayment;
	
	@Enumerated(EnumType.STRING)
	@Column(name = "payment_type")
	private PaymentType paymentType;

    @OneToMany(mappedBy = "orderProduct", cascade = CascadeType.ALL)
    private List<OrderDetailEntity> orderDetails = new ArrayList<>();

    @ManyToOne
    @JoinColumn(name = "userid")
    private UserEntity user;
    
}
