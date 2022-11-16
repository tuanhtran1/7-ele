package com.example.entity;

import lombok.*;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "user")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserEntity extends BaseEntity {

    @Column(name = "password")
    private String password;

    @Column(name = "name")
    private String name;

    @Column(name = "phone")
    private String phone;

    @Column(name = "email", unique = true)
    private String email;

    @Column(name = "status")
    private Integer status;

    @ManyToOne
    @JoinColumn(name = "roleid")
    private RoleEntity role;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<OrderEntity> orders;

    @OneToMany(mappedBy = "user", cascade = CascadeType.REMOVE)
    private List<CartEntity> carts;
	
	@OneToMany(mappedBy = "user", cascade = CascadeType.REMOVE)
	private List<ReceivedNoteEntity> receivedNote;
}
