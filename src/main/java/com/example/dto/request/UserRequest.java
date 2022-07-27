package com.example.dto.request;

import com.example.constant.SystemConstant;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserRequest {

    @Pattern(regexp = SystemConstant.EMAIL_REGEX, message = "Please provide a valid email")
    @NotNull(message = "Email is required")
    private String email;

    @NotEmpty(message = "Password is not empty")
    @NotNull(message = "Password is required")
    private String password;

    @JsonProperty("fullname")
    private String fullName;
}
