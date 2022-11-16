package com.example.api;


import com.example.report.StatisticUser;
import com.example.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/user")
public class UserAPI {
	
	@Autowired
	private IUserService userService;

//    @Autowired
//    private AuthenticationManager authenticationManager;
//
//    @Autowired
//    private TokenProvider jwtTokenUtil;

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
	
	@GetMapping("/statistic")
	public StatisticUser getStatisticUser(){
		return userService.getStatisticUser();
	}
}
