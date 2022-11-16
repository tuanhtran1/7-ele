package com.example.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "received_note_detail" ,uniqueConstraints =
@UniqueConstraint(columnNames = {"receivedid", "productid"}))
@Data
public class ReceivedNoteDetailEntity extends BaseEntity{
	
	@Column(name = "total")
	private Integer total;
	
	@Column(name = "price_receive")
	private Float priceReceive;
	
	@Column(name = "total_price")
	private Float totalPrice;
	
	@ManyToOne
	@JoinColumn(name = "receivedid")
	private ReceivedNoteEntity receivedNote;
	
	@ManyToOne
	@JoinColumn(name = "productid")
	private ProductEntity product;
	
	
}
