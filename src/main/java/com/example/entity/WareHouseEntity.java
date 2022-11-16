package com.example.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "warehouse")
@Data
public class WareHouseEntity extends BaseEntity{
	
	@Column(name="name")
	private String name;
	
	@Column(name="address")
	private String address;
	
	@OneToMany(mappedBy = "warehouse", fetch = FetchType.EAGER)
	private List<ReceivedNoteEntity> receivedNote;
}
