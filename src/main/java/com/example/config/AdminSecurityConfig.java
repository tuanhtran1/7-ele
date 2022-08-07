//package com.example.config;
//
//import com.example.security.CustomSuccessHandler;
//import com.example.service.impl.CustomUserDetailsService;
//import org.modelmapper.internal.cglib.core.Customizer;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.core.annotation.Order;
//import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
//
//@Configuration
//@EnableWebSecurity
//@Order(1)
//public class AdminSecurityConfig extends WebSecurityConfigurerAdapter {
//
//    @Bean
//    public UserDetailsService userDetailsService() {
//        return new CustomUserDetailsService();
//    }
//
//    @Bean
//    public BCryptPasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
//    }
//
//    @Bean
//    public DaoAuthenticationProvider authenticationProvider() {
//        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
//        authProvider.setUserDetailsService(userDetailsService());
//        authProvider.setPasswordEncoder(passwordEncoder());
//        return authProvider;
//    }
//
//    @Override
//    protected void configure(AuthenticationManagerBuilder auth) {
//        auth.authenticationProvider(authenticationProvider());
//
//    }
//
//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        // Cấu hình cho Login Form.
//        http.csrf().disable().authorizeRequests()
//                .antMatchers("/customer/**").hasRole("CUSTOMER").and()
//                .formLogin()//
//                .loginProcessingUrl("/customer/j_spring_security_login_customer")//
//                .loginPage("/customer/login")//
//                .defaultSuccessUrl("/customer")//
//                .failureUrl("/login2?message=error")//
//                .successHandler(myAuthenticationSuccessHandler())
//                .usernameParameter("username").passwordParameter("password")
//                .and().exceptionHandling().accessDeniedPage("/403")
//                .and().logout().logoutUrl("/j_spring_security_logout").logoutSuccessUrl("/login2?message=logout");
//    }
//    @Bean
//    public AuthenticationSuccessHandler myAuthenticationSuccessHandler() {
//        return new CustomSuccessHandler();
//    }
//
//}
