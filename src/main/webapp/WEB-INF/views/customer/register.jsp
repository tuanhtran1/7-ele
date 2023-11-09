<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 7/4/22
  Time: 5:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<main class="page-section inner-page-sec-padding-bottom">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 mb--30 mb-lg--0">
                <!-- Login Form s-->
                <form id="formRegister" action="#">
                    <div class="login-form">
                        <h4 class="login-title">Tạo tài khoản</h4>
                        <p><span class="font-weight-bold">I am a new customer</span></p>
                        <div class="row">
                            <div class="col-md-12 col-12 mb--15">
                                <label>Họ và tên</label>
                                <input class="mb-0 form-control" type="text" name="fullname"
                                       placeholder="Nhập họ và tên">
                            </div>
                            <div class="col-12 mb--20">
                                <label>Email</label>
                                <input class="mb-0 form-control" type="email" name="email" placeholder="Nhập email">
                            </div>
                            <div class="col-lg-6 mb--20">
                                <label>Mật khẩu</label>
                                <input class="mb-0 form-control" type="password" name="password"
                                       placeholder="Nhập mật khẩu">
                            </div>
                            <div class="col-lg-6 mb--20">
                                <label>Lặp lại mật khẩu</label>
                                <input class="mb-0 form-control" type="password" name="repeat-password"
                                       placeholder="Nhập lại mật khẩu">
                            </div>
                            <div class="col-md-12">
                                <a type="button" onclick="register()" class="btn btn-outlined">Đăng ký</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">
                <form action="/j_spring_security_check" id="formSubmit" method="post">
                    <div class="login-form">
                        <h4 class="login-title">Đăng nhập</h4>
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
                </form>
            </div>
        </div>
    </div>
</main>
<script type="text/javascript">

    function validateEmail(email) {
        var re = /\S+@\S+\.\S+/;
        return re.test(email);
    }

    function register() {

        var data = {}
        $.each($('#formRegister').find("input"), function (i, v) {
            data["" + v.name + ""] = v.value
        });
        if (validateEmail(data["email"]) == false) {
            Swal.fire({
                icon: 'error',
                title: 'Email không đúng định dạng !',
                showConfirmButton: false,
                timer: 1500
            })
        } else if (data["password"] != data["repeat-password"]) {
            Swal.fire({
                icon: 'error',
                title: 'Mật khẩu không trùng nhau !',
                showConfirmButton: false,
                timer: 1500
            })
        } else {
            delete data["repeat-password"]
            $.ajax({
                type: 'POST',
                url: '/api/customer/register',
                data: JSON.stringify(data),
                dataType: "json",
                contentType: "application/json",
                success: function (response) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Đăng kí thành công vui lòng check mail!',
                        showConfirmButton: true,
                        timer: 3000
                    })
                },
                error: function (response) {
                    console.log(response)
                    Swal.fire({
                        icon: 'error',
                        title: 'Không thể đăng kí vì tài khoản đã bị trùng !',
                        showConfirmButton: false,
                        timer: 1500
                    })
                }
            });
        }
    }

    function login() {
        $('#formSubmit').submit()
        console.log("Da nhan nut submit")
    }

</script>
</body>
</html>
