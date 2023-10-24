package com.example.entity;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.Max;

@Entity
@Table(name = "rating", uniqueConstraints = @UniqueConstraint(columnNames = {"userid", "productid"}))
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class RatingEntity extends BaseEntity{
	
	
    @ManyToOne
    @JoinColumn(name = "userid")
    private UserEntity user;

    @ManyToOne
    @JoinColumn(name = "productid")
    private ProductEntity product;
	
	@Column(name = "content")
	private String content;
	
	@Max(value = 5)
	@Column(name = "value")
	private Float value;
}
