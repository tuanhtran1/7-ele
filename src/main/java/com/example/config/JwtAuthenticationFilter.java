//package com.example.config;
//
//import com.example.constant.SystemConstant;
//import com.example.service.impl.CustomUserDetailsService;
//import io.jsonwebtoken.ExpiredJwtException;
//import io.jsonwebtoken.SignatureException;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
//import org.springframework.web.filter.OncePerRequestFilter;
//
//import javax.servlet.FilterChain;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//
//public class JwtAuthenticationFilter extends OncePerRequestFilter {
//
//    @Autowired
//    private CustomUserDetailsService userDetailsService;
//
//    @Autowired
//    private TokenProvider jwtTokenUtil;
//
//    @Override
//    protected void doFilterInternal(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
//        String header = req.getHeader(SystemConstant.HEADER_STRING);
//        String email = null;
//        String authToken = null;
//        if (header != null && header.startsWith(SystemConstant.TOKEN_PREFIX)) {
//            authToken = header.replace(SystemConstant.TOKEN_PREFIX,"");
//            try {
//                email = jwtTokenUtil.getUsernameFromToken(authToken);
//            } catch (IllegalArgumentException e) {
//                logger.error("an error occured during getting email from token", e);
//            } catch (ExpiredJwtException e) {
//                logger.warn("the token is expired and not valid anymore", e);
//            } catch(SignatureException e){
//                logger.error("Authentication Failed. Email or Password not valid.");
//            }
//        } else {
//            logger.warn("couldn't find bearer string, will ignore the header");
//        }
//        if (email != null && SecurityContextHolder.getContext().getAuthentication() == null) {
//
//            UserDetails userDetails = userDetailsService.loadUserByUsername(email);
//
//            if (jwtTokenUtil.validateToken(authToken, userDetails)) {
//                UsernamePasswordAuthenticationToken authentication = jwtTokenUtil.getAuthentication(authToken, SecurityContextHolder.getContext().getAuthentication(), userDetails);
//                authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(req));
//                logger.info("authenticated email " + email + ", setting security context");
//                SecurityContextHolder.getContext().setAuthentication(authentication);
//            }
//        }
//        chain.doFilter(req, res);
//    }
//}