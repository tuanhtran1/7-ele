package com.example.constant;

public class SystemConstant {
    public static final String BASE_API = "http://localhost:8080";
    public static final String UPLOAD_IMG_DIR_PRODUCT = "E:/7-ele/src/main/webapp/image/product/";

    public static final String ADMIN = "ROLE_ADMIN";
    public static final String MANAGER = "ROLE_MANAGER";

    public static final int ACTIVE_STATUS = 1;
    public static final int INACTIVE_STATUS = 0;

    //public static final long ACCESS_TOKEN_VALIDITY_SECONDS = 3600000;//1h
    public static final long ACCESS_TOKEN_VALIDITY_SECONDS = 3600000;
    public static final String SIGNING_KEY = "anhtuvippro";
    public static final String TOKEN_PREFIX = "Bearer ";
    public static final String HEADER_STRING = "Authorization";
    public static final String AUTHORITIES_KEY = "scopes";

    public static final String CUSTOMER_HOME = "/customer/home";
    public static final String ADMIN_HOME = "/admin/dashboard";

    public static final String EMAIL_REGEX = "^[a-z0-9._%+\\-]+@[a-z0-9.\\-]+\\.[a-z]{2,10}$";

    public static final String ERROR_WRONG_EMAIL_FORMAT = "Email không đúng định dạng";
}
