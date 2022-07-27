<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 7/2/22
  Time: 4:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="./">
    <div class="container">

        <div class="login-form col-md-9">
            <h4 class="login-title">Returning Customer</h4>
            <p><span class="font-weight-bold">I am a returning customer</span></p>
            <div class="row">
                <div class="col-md-12 col-12 mb--15">
                    <label for="email">Enter your email address here...</label>
                    <input class="mb-0 form-control" type="email" id="email1"
                           placeholder="Enter you email address here...">
                </div>
                <div class="col-12 mb--20">
                    <label for="password">Password</label>
                    <input class="mb-0 form-control" type="password" id="login-password"
                           placeholder="Enter your password">
                </div>
                <div class="col-md-12">
                    <a href="#" class="btn btn-outlined">Login</a>

                    <a class="pl-3" href="#">Forgot password ?</a>
                    <a class="pl-3" href="#">Register new member !</a>
                </div>
            </div>
        </div>

    </div>

</form>
</body>
</html>
