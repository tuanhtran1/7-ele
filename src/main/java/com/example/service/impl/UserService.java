package com.example.service.impl;

import com.example.constant.Message;
import com.example.dto.UserDTO;
import com.example.dto.request.MailRequest;
import com.example.dto.request.UserRequest;
import com.example.entity.UserEntity;
import com.example.exception.DuplicateException;
import com.example.mapper.UserMapper;
import com.example.report.StatisticUser;
import com.example.repository.RoleRepository;
import com.example.repository.UserRepository;
import com.example.service.IUserService;
import com.example.service.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@Service
public class UserService implements IUserService {

    @Autowired
    private PasswordEncoder passwordEncoder;
    
    @Autowired
	private MailService mailService;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Override
    public UserDTO login(UserRequest userRequest) {
        UserEntity userEntity = userRepository.findByEmailAndStatus(userRequest.getEmail(), 1);
        if (userEntity != null) {// tồn tại email trong db
            if (!userEntity.getPassword().equals(userRequest.getPassword())) return null;
        } else return null;
        return userMapper.toDTO(userEntity);
    }

    @Override
    public UserDTO createUser(UserRequest req, String roleCode) {
        Optional<UserEntity> userEntityOtp = Optional.ofNullable(userRepository.findByEmailAndStatus(req.getEmail(), 1));
        if (userEntityOtp.isPresent()) throw new DuplicateException(Message.ERROR_DUPLICATE_EMAIL);
        else {
            UserEntity user = new UserEntity();
            user.setEmail(req.getEmail());
            user.setPassword(passwordEncoder.encode(req.getPassword()));
            user.setRole(roleRepository.findByCode(roleCode));

            //status 0 wait active
            user.setStatus(0);
            
            //mail
			Map<String, Object> model = new HashMap<>();
			MailRequest mailRequest = new MailRequest();
			
			mailRequest.setName("Pustok Store Admin");
			mailRequest.setFrom("Admin");
			mailRequest.setTo(req.getEmail());
			mailRequest.setSubject("Welcome "+ req.getFullName());
			
			model.put("registerName", req.getFullName());
			model.put("registerAccount", req.getEmail());
			model.put("name", mailRequest.getName());
			model.put("location", "Ho Chi Minh city, Viet Nam");
			mailService.sendEmail(mailRequest,model);
			
            if (req.getFullName() == null) {
                user.setName(req.getEmail());
            } else user.setName(req.getFullName());

            return userMapper.toDTO(userRepository.save(user));
        }
    }
	
	@Override
	public UserDTO activateUser(String username) {
		UserEntity user = userRepository.findByEmail(username);
		user.setStatus(1);
		userRepository.save(user);
		return userMapper.toDTO(user);
	}
	
	@Override
	public StatisticUser getStatisticUser() {
		return userRepository.getStatisticUser();
	}
}
