package com.example.service.impl;

import com.example.dto.MyUser;
import com.example.entity.UserEntity;
import com.example.repository.UserRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        UserEntity userEntity = userRepository.findByEmailAndStatus(email,1);//userRepository.findOneByUserNameAndStatus(username, 1);
        if (userEntity == null) {
            throw new UsernameNotFoundException("User not found");
        }
        List<GrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority("ROLE_"+userEntity.getRole().getCode()));

        MyUser myUserDetail = new MyUser(userEntity.getEmail(), userEntity.getPassword(), true, true, true, true, authorities);
        myUserDetail.setName(userEntity.getName());
        myUserDetail.setId(userEntity.getId());
        return myUserDetail;
    }
}
