package com.example;

import com.example.service.impl.CustomUserDetailsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.core.env.Environment;
import org.springframework.security.core.userdetails.UserDetailsService;

@SpringBootApplication(exclude = {SecurityAutoConfiguration.class})
public class SpringBootWebApplication extends SpringBootServletInitializer {
	
	private static final Logger log = LoggerFactory.getLogger(SpringBootWebApplication.class);
	

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(SpringBootWebApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(SpringBootWebApplication.class, args);
    }

	

    @Bean
    public UserDetailsService userDetailsService() {
        return new CustomUserDetailsService();
    }
}
