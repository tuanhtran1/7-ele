<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 6/12/22
  Time: 11:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<%@ page import="static com.example.constant.SystemConstant.BASE_API" %>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from mannatthemes.com/dastone/default/apps-ecommerce-product-detail.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Aug 2021 07:06:03 GMT -->
<head>
    <meta charset="utf-8"/>
    <title>Order</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description"/>
    <meta content="" name="author"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

    <!-- App favicon -->
    <link rel="shortcut icon" href="/static/template/admin/assets/images/favicon.ico">

    <!-- App css -->
    <link href="/static/template/admin/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/static/template/admin/assets/css/icons.min.css" rel="stylesheet" type="text/css"/>
    <link href="/static/template/admin/assets/css/metisMenu.min.css" rel="stylesheet" type="text/css"/>
    <link href="/static/template/admin/plugins/daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css"/>
    <link href="/static/template/admin/assets/css/app.min.css" rel="stylesheet" type="text/css"/>

</head>

<body>

<div class="container-fluid">
    <!-- Page-Title -->
    <div class="row">
        <div class="col-sm-12">
            <div class="page-title-box">
                <div class="row">
                    <div class="col">
                        <h4 class="page-title">Products</h4>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0);">Dastone</a></li>
                            <li class="breadcrumb-item"><a href="javascript:void(0);">Ecommerce</a></li>
                            <li class="breadcrumb-item active">Products</li>
                        </ol>
                    </div><!--end col-->
                    <div class="col-auto align-self-center">
                        <a href="#" class="btn btn-sm btn-outline-primary" id="Dash_Date">
                            <span class="day-name" id="Day_Name">Today:</span>&nbsp;
                            <span class="" id="Select_date">Jan 11</span>
                            <i data-feather="calendar" class="align-self-center icon-xs ms-1"></i>
                        </a>
                        <a href="#" class="btn btn-sm btn-outline-primary">
                            <i data-feather="download" class="align-self-center icon-xs"></i>
                        </a>
                    </div><!--end col-->
                </div><!--end row-->
            </div><!--end page-title-box-->
        </div><!--end col-->
    </div><!--end row-->
    <!-- end page title end breadcrumb -->
    <div class="row">
        <div class="col-md-3">
            <div class="card">
                <div class="card-body">
                    <div class="ribbon1 rib1-primary">
                        <span class="text-white text-center rib1-primary">50% off</span>
                    </div><!--end ribbon-->
                    <img src="<%=BASE_API%>/static/template/admin/assets/images/products/img-5.png" alt="" class="d-block mx-auto my-4"
                         height="150">
                    <div class="row my-4">
                        <div class="col">
                            <span class="badge badge-light mb-2">Life Style</span>
                            <a href="#" class="title-text d-block">Unique Blue Bag</a>
                        </div>
                        <div class="col-auto">
                            <h4 class="text-dark mt-0">$49.00 <small class="text-muted font-14">
                                <del>$99.00</del>
                            </small></h4>
                            <ul class="list-inline mb-0 product-review align-self-center">
                                <li class="list-inline-item"><i class="la la-star text-warning font-16"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i
                                        class="la la-star-half-o text-warning font-16 ms-n2"></i></li>
                            </ul>
                        </div>
                    </div>
                    <button class="btn btn-soft-primary w-100">Add To Cart</button>
                </div><!--end card-body-->
            </div><!--end card-->
        </div><!--end col-->
        <div class="col-md-3">
            <div class="card">
                <div class="card-body">
                    <div class="ribbon1 rib1-primary">
                        <span class="text-white text-center rib1-primary">50% off</span>
                    </div><!--end ribbon-->
                    <img src="<%=BASE_API%>/static/template/admin/assets/images/products/img-2.png" alt="" class="d-block mx-auto my-4"
                         height="150">
                    <div class="row my-4">
                        <div class="col">
                            <span class="badge badge-light mb-2">Fashion</span>
                            <a href="#" class="title-text d-block">Unique Black Watch</a>
                        </div>
                        <div class="col-auto">
                            <h4 class="text-dark mt-0">$999.00 <small class="text-muted font-14">
                                <del>$1999.00</del>
                            </small></h4>
                            <ul class="list-inline mb-0 product-review align-self-center">
                                <li class="list-inline-item"><i class="la la-star text-warning font-16"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i
                                        class="la la-star-half-o text-warning font-16 ms-n2"></i></li>
                            </ul>
                        </div>
                    </div>
                    <button class="btn btn-soft-primary w-100">Add To Cart</button>
                </div><!--end card-body-->
            </div><!--end card-->
        </div><!--end col-->
        <div class="col-md-3">
            <div class="card">
                <div class="card-body">
                    <div class="ribbon1 rib1-primary">
                        <span class="text-white text-center rib1-primary">50% off</span>
                    </div><!--end ribbon-->
                    <img src="<%=BASE_API%>/static/template/admin/assets/images/products/img-3.png" alt="" class="d-block mx-auto my-4"
                         height="150">
                    <div class="row my-4">
                        <div class="col">
                            <span class="badge badge-light mb-2">Footwear</span>
                            <a href="#" class="title-text d-block">Reebok Shoes</a>
                        </div>
                        <div class="col-auto">
                            <h4 class="text-dark mt-0">$39.00 <small class="text-muted font-14">
                                <del>$99.00</del>
                            </small></h4>
                            <ul class="list-inline mb-0 product-review align-self-center">
                                <li class="list-inline-item"><i class="la la-star text-warning font-16"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i
                                        class="la la-star-half-o text-warning font-16 ms-n2"></i></li>
                            </ul>
                        </div>
                    </div>
                    <button class="btn btn-soft-primary w-100">Add To Cart</button>
                </div><!--end card-body-->
            </div><!--end card-->
        </div><!--end col-->
        <div class="col-md-3">
            <div class="card">
                <div class="card-body">
                    <div class="ribbon1 rib1-primary">
                        <span class="text-white text-center rib1-primary">50% off</span>
                    </div><!--end ribbon-->
                    <img src="<%=BASE_API%>/static/template/admin/assets/images/products/img-4.png" alt="" class="d-block mx-auto my-4"
                         height="150">
                    <div class="row my-4">
                        <div class="col">
                            <span class="badge badge-light mb-2">Life Style</span>
                            <a href="#" class="title-text d-block">Unique Ladies Purse</a>
                        </div>
                        <div class="col-auto">
                            <h4 class="text-dark mt-0">$49.00 <small class="text-muted font-14">
                                <del>$99.00</del>
                            </small></h4>
                            <ul class="list-inline mb-0 product-review align-self-center">
                                <li class="list-inline-item"><i class="la la-star text-warning font-16"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i
                                        class="la la-star-half-o text-warning font-16 ms-n2"></i></li>
                            </ul>
                        </div>
                    </div>
                    <button class="btn btn-soft-primary w-100">Add To Cart</button>
                </div><!--end card-body-->
            </div><!--end card-->
        </div><!--end col-->
    </div>  <!--end row-->
    <div class="row">
        <div class="col-md-3">
            <div class="card">
                <div class="card-body">
                    <div class="ribbon4 rib4-secondary">
                        <span class="ribbon4-band ribbon4-band-secondary text-white text-center">50% off</span>
                    </div><!--end ribbon-->
                    <img src="<%=BASE_API%>/static/template/admin/assets/images/products/img-6.png" alt="" class="d-block mx-auto my-4"
                         height="150">
                    <div class="row my-4">
                        <div class="col">
                            <span class="badge badge-light mb-2">Fashion</span>
                            <a href="#" class="title-text d-block">Ladies Top</a>
                        </div>
                        <div class="col-auto">
                            <h4 class="text-dark mt-0">$69.00 <small class="text-muted font-14">
                                <del>$99.00</del>
                            </small></h4>
                            <ul class="list-inline mb-0 product-review align-self-center">
                                <li class="list-inline-item"><i class="la la-star text-warning font-16"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i
                                        class="la la-star-half-o text-warning font-16 ms-n2"></i></li>
                            </ul>
                        </div>
                    </div>
                    <button class="btn btn-soft-primary w-100">Add To Cart</button>
                </div><!--end card-body-->
            </div><!--end card-->
        </div><!--end col-->

        <div class="col-md-3">
            <div class="card">
                <div class="card-body">
                    <div class="ribbon4 rib4-secondary">
                        <span class="ribbon4-band ribbon4-band-secondary text-white text-center">50% off</span>
                    </div><!--end ribbon-->
                    <img src="<%=BASE_API%>/static/template/admin/assets/images/products/img-1.png" alt="" class="d-block mx-auto my-4"
                         height="150">
                    <div class="row my-4">
                        <div class="col">
                            <span class="badge badge-light mb-2">Footwear</span>
                            <a href="#" class="title-text d-block">New White Shoes</a>
                        </div>
                        <div class="col-auto">
                            <h4 class="text-dark mt-0">$120.00 <small class="text-muted font-14">
                                <del>$249.00</del>
                            </small></h4>
                            <ul class="list-inline mb-0 product-review align-self-center">
                                <li class="list-inline-item"><i class="la la-star text-warning font-16"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i
                                        class="la la-star-half-o text-warning font-16 ms-n2"></i></li>
                            </ul>
                        </div>
                    </div>
                    <button class="btn btn-soft-primary w-100">Add To Cart</button>
                </div><!--end card-body-->
            </div><!--end card-->
        </div><!--end col-->

        <div class="col-md-3">
            <div class="card">
                <div class="card-body">
                    <div class="ribbon4 rib4-secondary">
                        <span class="ribbon4-band ribbon4-band-secondary text-white text-center">50% off</span>
                    </div><!--end ribbon-->
                    <img src="<%=BASE_API%>/static/template/admin/assets/images/products/img-7.png" alt="" class="d-block mx-auto my-4"
                         height="150">
                    <div class="row my-4">
                        <div class="col">
                            <span class="badge badge-light mb-2">Life Style</span>
                            <a href="#" class="title-text d-block">Unique Silver Watch</a>
                        </div>
                        <div class="col-auto">
                            <h4 class="text-dark mt-0">$20.00 <small class="text-muted font-14">
                                <del>$49.00</del>
                            </small></h4>
                            <ul class="list-inline mb-0 product-review align-self-center">
                                <li class="list-inline-item"><i class="la la-star text-warning font-16"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i
                                        class="la la-star-half-o text-warning font-16 ms-n2"></i></li>
                            </ul>
                        </div>
                    </div>
                    <button class="btn btn-soft-primary w-100">Add To Cart</button>
                </div><!--end card-body-->
            </div><!--end card-->
        </div><!--end col-->
        <div class="col-md-3">
            <div class="card">
                <div class="card-body">
                    <div class="ribbon4 rib4-secondary">
                        <span class="ribbon4-band ribbon4-band-secondary text-white text-center">50% off</span>
                    </div><!--end ribbon-->
                    <img src="<%=BASE_API%>/static/template/admin/assets/images/products/img-8.png" alt="" class="d-block mx-auto my-4"
                         height="150">
                    <div class="row my-4">
                        <div class="col">
                            <span class="badge badge-light mb-2">Interior</span>
                            <a href="#" class="title-text d-block">Night Lamp</a>
                        </div>
                        <div class="col-auto">
                            <h4 class="text-dark mt-0">$69.00 <small class="text-muted font-14">
                                <del>$99.00</del>
                            </small></h4>
                            <ul class="list-inline mb-0 product-review align-self-center">
                                <li class="list-inline-item"><i class="la la-star text-warning font-16"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i class="la la-star text-warning font-16 ms-n2"></i></li>
                                <li class="list-inline-item"><i
                                        class="la la-star-half-o text-warning font-16 ms-n2"></i></li>
                            </ul>
                        </div>
                    </div>
                    <button class="btn btn-soft-primary w-100">Add To Cart</button>
                </div><!--end card-body-->
            </div><!--end card-->
        </div><!--end col-->
    </div>  <!--end row-->

</div><!-- container -->

<footer class="footer text-center text-sm-start">
    &copy;
    <script>
        document.write(new Date().getFullYear())
    </script>
    Dastone <span class="text-muted d-none d-sm-inline-block float-end">Crafted with <i
        class="mdi mdi-heart text-danger"></i> by Mannatthemes</span>
</footer><!--end footer-->


<!-- jQuery  -->
<script src="/static/template/admin/assets/js/jquery.min.js"></script>
<script src="/static/template/admin/assets/js/bootstrap.bundle.min.js"></script>
<script src="/static/template/admin/assets/js/metismenu.min.js"></script>
<script src="/static/template/admin/assets/js/waves.js"></script>
<script src="/static/template/admin/assets/js/feather.min.js"></script>
<script src="/static/template/admin/assets/js/simplebar.min.js"></script>
<script src="/static/template/admin/assets/js/moment.js"></script>
<script src="/static/template/admin/plugins/daterangepicker/daterangepicker.js"></script>

<!-- App js -->
<script src="/static/template/admin/assets/js/app.js"></script>

</body>


<!-- Mirrored from mannatthemes.com/dastone/default/apps-ecommerce-product-detail.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Aug 2021 07:06:03 GMT -->
</html>