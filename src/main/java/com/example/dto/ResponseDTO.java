package com.example.dto;

import lombok.Data;

import java.util.List;

@Data
public class ResponseDTO {
    private List<String> errors;
    private Object data;
}
