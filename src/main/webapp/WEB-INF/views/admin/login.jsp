<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 6/10/22
  Time: 9:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Đăng nhập</title>
</head>
<body>
<div class="container">
    <div class="row vh-100 d-flex justify-content-center">
        <div class="col-12 align-self-center">
            <div class="row">
                <div class="col-lg-5 mx-auto">
                    <div class="card">
                        <div class="card-body p-0 auth-header-box">
                            <div class="text-center p-3">
                                <a href="index.html" class="logo logo-admin">
                                    <img src="/template/admin/assets/images/logo-sm-dark.png" height="50" alt="logo"
                                         class="auth-logo">
                                </a>
                                <h4 class="mt-3 mb-1 fw-semibold text-white font-18">Let's Get Started Dastone</h4>
                                <p class="text-muted  mb-0">Sign in to continue to Dastone.</p>
                            </div>
                        </div>
                        <div class="card-body p-0">
                            <ul class="nav-border nav nav-pills" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active fw-semibold" data-bs-toggle="tab" href="#LogIn_Tab"
                                       role="tab">Log In</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link fw-semibold" data-bs-toggle="tab" href="#Register_Tab"
                                       role="tab">Register</a>
                                </li>
                            </ul>
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane active p-3" id="LogIn_Tab" role="tabpanel">
                                    <form action="/admin/j_spring_security_check" id="formSubmit"
                                          class="form-horizontal auth-form" method="post">

                                        <div class="form-group mb-2">
                                            <label class="form-label" for="username">Username</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="Enter email"
                                                       name="email" id="email">
                                            </div>
                                        </div><!--end form-group-->

                                        <div class="form-group mb-2">
                                            <label class="form-label" for="userpassword">Password</label>
                                            <div class="input-group">
                                                <input type="password" class="form-control" placeholder="Enter password"
                                                       name="password" id="password-field">
                                            </div>
                                        </div><!--end form-group-->

                                        <div class="form-group row my-3">
                                            <div class="col-sm-6">
                                                <div class="custom-control custom-switch switch-success">
                                                    <input type="checkbox" class="custom-control-input"
                                                           id="customSwitchSuccess">
                                                    <label class="form-label text-muted" for="customSwitchSuccess">Remember
                                                        me</label>
                                                </div>
                                            </div><!--end col-->
                                            <div class="col-sm-6 text-end">
                                                <a class="text-muted font-13"><i class="dripicons-lock"></i> Forgot
                                                    password?</a>
                                            </div><!--end col-->
                                        </div><!--end form-group-->

                                        <div class="form-group mb-0 row">
                                            <div class="col-12">
                                                <button class="btn btn-primary w-100 waves-effect waves-light"
                                                        type="button" id="btnLogin" onclick="login()">Log In <i
                                                        class="fas fa-sign-in-alt ms-1"></i></button>
                                            </div><!--end col-->
                                        </div> <!--end form-group-->
                                    </form><!--end form-->

                                    <div class="m-3 text-center text-muted">
                                        <p class="mb-0">Don't have an account ? <a href="auth-register.html"
                                                                                   class="text-primary ms-2">Free
                                            Resister</a></p>
                                    </div>
                                    <div class="account-social">
                                        <h6 class="mb-3">Or Login With</h6>
                                    </div>
                                    <div class="btn-group w-100">
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Facebook</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Twitter</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Google</button>
                                    </div>
                                </div>
                                <div class="tab-pane px-3 pt-3" id="Register_Tab" role="tabpanel">
                                    <form class="form-horizontal auth-form"
                                          action="https://mannatthemes.com/dastone/default/index.html">

                                        <div class="form-group mb-2">
                                            <label class="form-label" for="username">Username</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="username" id="username"
                                                       placeholder="Enter username">
                                            </div>
                                        </div><!--end form-group-->

                                        <div class="form-group mb-2">
                                            <label class="form-label" for="useremail">Email</label>
                                            <div class="input-group">
                                                <input type="email" class="form-control" name="email" id="useremail"
                                                       placeholder="Enter Email">
                                            </div>
                                        </div><!--end form-group-->

                                        <div class="form-group mb-2">
                                            <label class="form-label" for="userpassword">Password</label>
                                            <div class="input-group">
                                                <input type="password" class="form-control" name="password"
                                                       id="userpassword" placeholder="Enter password">
                                            </div>
                                        </div><!--end form-group-->

                                        <div class="form-group mb-2">
                                            <label class="form-label" for="conf_password">Confirm Password</label>
                                            <div class="input-group">
                                                <input type="password" class="form-control" name="conf-password"
                                                       id="conf_password" placeholder="Enter Confirm Password">
                                            </div>
                                        </div><!--end form-group-->

                                        <div class="form-group mb-2">
                                            <label class="form-label" for="mo_number">Mobile Number</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="mobile number"
                                                       id="mo_number" placeholder="Enter Mobile Number">
                                            </div>
                                        </div><!--end form-group-->

                                        <div class="form-group row my-3">
                                            <div class="col-sm-12">
                                                <div class="custom-control custom-switch switch-success">
                                                    <input type="checkbox" class="custom-control-input"
                                                           id="customSwitchSuccess2">
                                                    <label class="form-label text-muted" for="customSwitchSuccess2">You
                                                        agree to the Dastone <a href="#" class="text-primary">Terms of
                                                            Use</a></label>
                                                </div>
                                            </div><!--end col-->
                                        </div><!--end form-group-->

                                        <div class="form-group mb-0 row">
                                            <div class="col-12">
                                                <button class="btn btn-primary w-100 waves-effect waves-light"
                                                        type="button">Register <i class="fas fa-sign-in-alt ms-1"></i>
                                                </button>
                                            </div><!--end col-->
                                        </div> <!--end form-group-->
                                    </form><!--end form-->
                                    <p class="my-3 text-muted">Already have an account ?<a href="auth-login.html"
                                                                                           class="text-primary ms-2">Log
                                        in</a></p>
                                </div>
                            </div>
                        </div><!--end card-body-->
                        <div class="card-body bg-light-alt text-center">
                                    <span class="text-muted d-none d-sm-inline-block">Mannatthemes © <script>
                                        document.write(new Date().getFullYear())
                                    </script></span>
                        </div>
                    </div><!--end card-->
                </div><!--end col-->
            </div><!--end row-->
        </div><!--end col-->
    </div><!--end row-->
</div><!--end container-->
<c:if test="${param.incorrectAccount != null}">
    <div class="alert alert-danger">
        Username or password incorrect
    </div>
</c:if>
<c:if test="${param.accessDenied != null}">
    <div class="alert alert-danger">
        you Not authorize
    </div>
</c:if>
<c:if test="${param.sessionTimeout != null}">
    <div class="alert alert-danger">
        session timeout
    </div>
</c:if>
<script src="/template/admin/assets/js/jquery.min.js"></script>

<script type="text/javascript">

    function login() {
        $('#formSubmit').submit()
    }
</script>

</body>
</html>
