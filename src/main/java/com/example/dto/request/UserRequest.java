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

    @Pattern(regexp = SystemConstant.EMAIL_REGEX, message = "Email không đúng định dạng")
    @NotNull(message = "Email phải được nhập")
    private String email;

    @NotEmpty(message = "Mật khẩu không được trống")
    @NotNull(message = "Mật khẩu phải được nhập")
    private String password;

    @JsonProperty("fullname")
    private String fullName;
}
