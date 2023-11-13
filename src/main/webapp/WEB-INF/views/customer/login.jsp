
<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 7/2/22
  Time: 4:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.example.constant.Message" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="/j_spring_security_check" id="formSubmit" method="post">
    <div class="container">
        <div class="login-form">
            <c:if test="${incorrectAccount == 'true'}">
                <p class="login-title"><span style="color: red; size: 10px">${Message.MESSAGE_LOGIN_FAILED}</span></p>
            </c:if>
            <h4 class="login-title">Returning Customer</h4>
            <p><span class="font-weight-bold">I am a returning customer</span></p>
            <div class="row">
                <div class="col-md-12 col-12 mb--15">
                    <label >Enter your email address here...</label>
                    <input class="mb-0 form-control" name="email" type="email" id="email1"
                           placeholder="Enter you email address here...">
                </div>
                <div class="col-12 mb--20">
                    <label>Password</label>
                    <input class="mb-0 form-control" name="password" type="password" id="login-password"
                           placeholder="Enter your password">
                </div>
                <div class="col-md-12">
                    <button type="button" onclick="login()" class="btn btn-outlined">Login</button>
                </div>
            </div>
        </div>
    </div>
</form>

<script type="text/javascript">
    console.log('incorrectAccount : ${incorrectAccount}')
    console.log('disable : ${disable}')

    function validateEmail(email) {
        var re = /\S+@\S+\.\S+/;
        return re.test(email);
    }

    function login() {
        var data = {}
        $.each($('#formSubmit').find("input"), function (i, v) {
            data["" + v.name + ""] = v.value
        });

        if (data["email"] === "") {
            Swal.fire({
                icon: 'error',
                title: '${Message.ERROR_LOGIN_EMPTY_EMAIL}',
                showConfirmButton: false,
                timer: 1500
            })
            return;
        }
        if (data["password"] === "") {
            Swal.fire({
                icon: 'error',
                title: '${Message.ERROR_LOGIN_EMPTY_PASSWORD}',
                showConfirmButton: false,
                timer: 1500
            })
            return;
        }

        if (validateEmail(data["email"]) == false) {
            Swal.fire({
                icon: 'error',
                title: '${Message.ERROR_LOGIN_WRONG_EMAIL_FORMAT}',
                showConfirmButton: false,
                timer: 1500
            })
            return;
        }

        $('#formSubmit').submit()
    }
</script>
</body>
</html>
