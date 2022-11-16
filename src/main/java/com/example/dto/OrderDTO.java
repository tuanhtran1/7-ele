package com.example.dto;

import com.example.enums.PaymentType;
import com.example.enums.StatusOrder;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderDTO {
    private Long id;
    private Float totalMoney;
    private String address;
    private UserDTO user;
    private Date createdDate;
	private StatusOrder status;
	private PaymentType paymentType;
	private String paymentId;
}
