package com.example.entity;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "promotiondetail", uniqueConstraints = @UniqueConstraint(columnNames = {"productid", "promotionid"}))
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class PromotionDetailEntity extends BaseEntity {
	
    @ManyToOne
    @JoinColumn(name = "productid")
    private ProductEntity product;
	
	@ManyToOne
    @JoinColumn(name = "promotionid")
    private PromotionEntity promotion;
	
	@Column(name = "percent")
	private Float percent;
}
