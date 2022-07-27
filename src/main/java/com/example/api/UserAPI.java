//package com.example.api;
//
//import com.example.config.TokenProvider;
//import com.example.dto.AuthToken;
//import com.example.dto.request.UserRequest;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.ResponseEntity;
//import org.springframework.security.authentication.AuthenticationManager;
//import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.AuthenticationException;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import javax.validation.Valid;
//
//@RestController
//@RequestMapping("/api/user")
//public class UserAPI {
//
//    @Autowired
//    private AuthenticationManager authenticationManager;
//
//    @Autowired
//    private TokenProvider jwtTokenUtil;
//
//    @PostMapping("/authenticate")
//    public ResponseEntity<?> authenticated(@Valid @RequestBody UserRequest userRequest) throws AuthenticationException {
//
//        final Authentication authentication = authenticationManager.authenticate(
//                new UsernamePasswordAuthenticationToken(
//                        userRequest.getEmail(),
//                        userRequest.getPassword()
//                )
//        );
//        SecurityContextHolder.getContext().setAuthentication(authentication);
//        final String token = jwtTokenUtil.generateToken(authentication);
//        return ResponseEntity.ok(new AuthToken(token));
//    }
//}
