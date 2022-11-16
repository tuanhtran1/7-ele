package com.example.security.utils;

import com.example.dto.MyUser;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.ArrayList;
import java.util.List;

public class SecurityUtils {
    //lấy thông tin liên quan
    public static MyUser getPrincipal() {
        return (MyUser) (SecurityContextHolder
                .getContext()).getAuthentication().getPrincipal();
    }

    public static String getAuthority(){
        List<GrantedAuthority> authorities = (List<GrantedAuthority>)(SecurityContextHolder.getContext().getAuthentication().getAuthorities());
        return authorities.get(0).toString();
    }

//    public static List<String> getAuthorities() {
//        List<String> results = new ArrayList<>();
//        List<GrantedAuthority> authorities = (List<GrantedAuthority>)(SecurityContextHolder.getContext().getAuthentication().getAuthorities());
//        for (GrantedAuthority authority : authorities) {
//            results.add(authority.getAuthority());
//        }
//        return results;
//    }
}
