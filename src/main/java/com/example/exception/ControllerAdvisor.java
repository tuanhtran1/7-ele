package com.example.exception;

import com.example.dto.ResponseDTO;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import java.util.ArrayList;
import java.util.List;

@RestControllerAdvice
public class ControllerAdvisor extends ResponseEntityExceptionHandler {

    @ExceptionHandler(NotFoundException.class)
    public ResponseEntity<ResponseDTO> handlerNotFoundException(NotFoundException ex, WebRequest req) {
        // Log err
        ResponseDTO result =  new ResponseDTO();
        List<String> errors = new ArrayList<>();
        errors.add(ex.getMessage());
        result.setErrors(errors);
        result.setData(null);
        return new ResponseEntity<>(result,HttpStatus.NOT_FOUND);
    }

    @ExceptionHandler(FieldNotFoundException.class)
    public ResponseEntity<ResponseDTO> handleFileNotFoundException(FieldNotFoundException ex, WebRequest request) {
        ResponseDTO result =  new ResponseDTO();
        List<String> errors = new ArrayList<>();
        errors.add(ex.getMessage());
        result.setErrors(errors);
        result.setData(null);
        return new ResponseEntity<>(result, HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @ExceptionHandler(CalculateException.class)
    public ResponseEntity<ResponseDTO> handleCalculateException(CalculateException ex, WebRequest request) {
        ResponseDTO result =  new ResponseDTO();
        List<String> errors = new ArrayList<>();
        errors.add(ex.getMessage());
        result.setErrors(errors);
        result.setData(null);
        return new ResponseEntity<>(result, HttpStatus.BAD_REQUEST);
    }


}
