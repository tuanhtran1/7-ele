package com.example.service;

import com.example.dto.UserDTO;
import com.example.dto.request.UserRequest;
import com.example.report.StatisticUser;
import javafx.scene.media.MediaPlayer;

public interface IUserService {
    UserDTO login(UserRequest userRequest);

    UserDTO createUser(UserRequest req, String role);
    
    UserDTO activateUser(String username);
    
    StatisticUser getStatisticUser();
}
