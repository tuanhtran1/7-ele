package com.example.config;

import com.example.constant.SystemConstant;
import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.DefaultUriBuilderFactory;

@Configuration
public class Config{

    @Bean
    public RestTemplate restTemplate() {
        RestTemplate restTemplate = new RestTemplate();
        DefaultUriBuilderFactory defaultUriBuilderFactory = new DefaultUriBuilderFactory(SystemConstant.BASE_API);
        restTemplate.setUriTemplateHandler(defaultUriBuilderFactory);
        return restTemplate;
    }

    @Bean
    public ModelMapper modelMapper() {
        return new ModelMapper();
    }
}