package com.example.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "received_note")
@Data
public class ReceivedNoteEntity extends BaseEntity{
	
	@ManyToOne
	@JoinColumn(name="userId")
	private UserEntity user;
	
	@OneToMany(mappedBy = "receivedNote", cascade = CascadeType.ALL)
	private List<ReceivedNoteDetailEntity> receivedNoteDetail;
	
	@ManyToOne
	@JoinColumn(name = "warehouseid")
	private WareHouseEntity warehouse;
	
}
