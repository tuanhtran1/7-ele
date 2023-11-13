package com.example.entity;

import com.example.enums.DiscountType;
import com.example.enums.PromotionType;
import lombok.*;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "promotion")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class PromotionEntity extends BaseEntity {

    @Column(name = "name")
    private String name;

    @Column(name = "discount")
    private Double discount;
	
	@Column(name = "startDate")
	private Date startDate;
	
	@Column(name = "endDate")
	private Date endDate;
	
	@Column(name = "type")
	@Enumerated(EnumType.STRING)
	private PromotionType type;
	
	@Column(name = "discount_type")
	@Enumerated(EnumType.STRING)
	private DiscountType discountType;
	
	@OneToMany(mappedBy = "promotion", cascade = CascadeType.ALL)
	private List<PromotionDetailEntity> promotionDetails = new ArrayList<>();
	
}
