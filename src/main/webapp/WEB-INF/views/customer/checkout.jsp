<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 23/08/2022
  Time: 00:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.example.constant.Message" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<section class="breadcrumb-section">
    <h2 class="sr-only">Site Breadcrumb</h2>
    <div class="container">
        <div class="breadcrumb-contents">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/customer/home">Home</a></li>
                    <li class="breadcrumb-item active">Checkout</li>
                </ol>
            </nav>
        </div>
    </div>
</section>
<main id="content" class="page-section inner-page-sec-padding-bottom space-db--20">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <!-- Checkout Form s-->
                <div class="checkout-form">
                    <div class="row row-40">
<%--                        <div class="col-12">--%>
<%--                            <h1 class="quick-title">Checkout</h1>--%>
<%--                            <!-- Slide Down Trigger  -->--%>
<%--                            <div class="checkout-quick-box">--%>
<%--                                <p><i class="far fa-sticky-note"></i>Have a coupon? <a href="javascript:" class="slide-trigger" data-target="#quick-cupon">--%>
<%--                                    Click here to enter your code</a></p>--%>
<%--                            </div>--%>
<%--                            <!-- Slide Down Blox ==> Cupon Box -->--%>
<%--                            <div class="checkout-slidedown-box" id="quick-cupon" style="display: block;">--%>
<%--                                <form action="./">--%>
<%--                                    <div class="checkout_coupon">--%>
<%--                                        <input type="text" class="mb-0" placeholder="Coupon Code">--%>
<%--                                        <a href="" class="btn btn-outlined">Apply coupon</a>--%>
<%--                                    </div>--%>
<%--                                </form>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                        <div class="col-lg-7 mb--20">
                            <!-- Billing Address -->
                            <div id="billing-form" class="mb-40">
                                <h4 class="checkout-title">Billing Address</h4>
                                <div class="row">
                                    <div class="col-12 mb--20">
                                        <label>Họ Tên</label>
                                        <input type="text" readonly value="<security:authentication property="principal.fullName"/>">
                                    </div>
                                    <div class="col-md-6 col-12 mb--20">
                                        <label>Email Address*</label>
                                        <input type="email" readonly value="<security:authentication property="principal.username"/>">
                                    </div>
                                    <div class="col-md-6 col-12 mb--20">
                                        <label>Số điện thoại</label>
                                        <input type="text" readonly value="<security:authentication property="principal.phone"/>">
                                    </div>
                                    <div class="col-12 mb--20">
                                        <label>Địa chỉ</label>
                                        <input id="createAddress" type="text" placeholder="Nhập địa chỉ" value="">
                                    </div>
<%--                                    <div class="col-12 mb--20 ">--%>
<%--                                        <div class="block-border check-bx-wrapper">--%>
<%--                                            <div class="check-box">--%>
<%--                                                <input type="checkbox" id="shiping_address" data-shipping="">--%>
<%--                                                <label for="shiping_address">Ship to Different Address</label>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
                                </div>
                            </div>
<%--                            <!-- Shipping Address -->--%>
<%--                            <div id="shipping-form" class="mb--40">--%>
<%--                                <h4 class="checkout-title">Shipping Address</h4>--%>
<%--                                <div class="row">--%>
<%--                                    <div class="col-md-6 col-12 mb--20">--%>
<%--                                        <label>First Name*</label>--%>
<%--                                        <input type="text" placeholder="First Name">--%>
<%--                                    </div>--%>
<%--                                    <div class="col-md-6 col-12 mb--20">--%>
<%--                                        <label>Last Name*</label>--%>
<%--                                        <input type="text" placeholder="Last Name">--%>
<%--                                    </div>--%>
<%--                                    <div class="col-md-6 col-12 mb--20">--%>
<%--                                        <label>Email Address*</label>--%>
<%--                                        <input type="email" placeholder="Email Address">--%>
<%--                                    </div>--%>
<%--                                    <div class="col-md-6 col-12 mb--20">--%>
<%--                                        <label>Phone no*</label>--%>
<%--                                        <input type="text" placeholder="Phone number">--%>
<%--                                    </div>--%>
<%--                                    <div class="col-12 mb--20">--%>
<%--                                        <label>Company Name</label>--%>
<%--                                        <input type="text" placeholder="Company Name">--%>
<%--                                    </div>--%>
<%--                                    <div class="col-12 mb--20">--%>
<%--                                        <label>Address*</label>--%>
<%--                                        <input type="text" placeholder="Address line 1">--%>
<%--                                        <input type="text" placeholder="Address line 2">--%>
<%--                                    </div>--%>
<%--                                    <div class="col-md-6 col-12 mb--20">--%>
<%--                                        <label>Country*</label>--%>
<%--                                        <select class="nice-select" style="display: none;">--%>
<%--                                            <option>Bangladesh</option>--%>
<%--                                            <option>China</option>--%>
<%--                                            <option>country</option>--%>
<%--                                            <option>India</option>--%>
<%--                                            <option>Japan</option>--%>
<%--                                        </select><div class="nice-select" tabindex="0"><span class="current">Bangladesh</span><ul class="list"><li data-value="Bangladesh" class="option selected">Bangladesh</li><li data-value="China" class="option">China</li><li data-value="country" class="option">country</li><li data-value="India" class="option">India</li><li data-value="Japan" class="option">Japan</li></ul></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="col-md-6 col-12 mb--20">--%>
<%--                                        <label>Town/City*</label>--%>
<%--                                        <input type="text" placeholder="Town/City">--%>
<%--                                    </div>--%>
<%--                                    <div class="col-md-6 col-12 mb--20">--%>
<%--                                        <label>State*</label>--%>
<%--                                        <input type="text" placeholder="State">--%>
<%--                                    </div>--%>
<%--                                    <div class="col-md-6 col-12 mb--20">--%>
<%--                                        <label>Zip Code*</label>--%>
<%--                                        <input type="text" placeholder="Zip Code">--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="order-note-block mt--30">
                                <label for="order-note">Order notes</label>
                                <textarea id="order-note" cols="30" rows="10" class="order-note" placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="row">
                                <!-- Cart Total -->
                                <div class="col-12">
                                    <div class="checkout-cart-total">
                                        <h2 class="checkout-title">ĐƠN HÀNG CỦA BẠN</h2>
                                        <h4>Sản phẩm <span>Tổng</span></h4>
                                        <ul id ="listCart">

                                        </ul>
                                        <p id="subTotal">Tổng phụ <span>$104.00</span></p>
                                        <p id="feeShip"> Phí ship <span>$00.00</span></p>

                                        <h4 id ="grandTotal">Tổng cộng<form id="payment"><span><input name="total" value="100"></span></form></h4>
                                        <div class="term-block">
                                            <input type="checkbox" id="accept_terms2">
                                            <label for="accept_terms2">Tôi đã đọc và chấp nhận các điều khoản & điều kiện</label>
                                        </div>
                                            <button onclick="paymentPaypal()" class="place-order w-100 btnPaypal">Paypal</button>
                                        <br>
                                            <button onclick="paymentCash()" class="place-order w-100">Thanh toán bằng tiền mặt</button>
                                        <div id="formPayment">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<script type="text/javascript">

    var totalPrice
    callAPIcart(<security:authentication property="principal.id"/>)
    function callAPIcart(id) {
        $.ajax({
            url: "/api/carts?userId=" + id,
            type: 'GET',
            dataType: "json",
            contentType: 'application/json',
            success: function (response) {
                totalPrice = 0, mount = response.length
                var result = '';
                $.each(response, function (index, item) {
                    totalPrice += item.totalMoney
                    result += '<li><span class="left">'+ item.product.name+'</span> <span class="right"> <strong>'+item.quantity+' x</strong> '+ item.product.salePrice+'đ</span></li>'

                })
                $('#listCart').html(result)
                $('#subTotal').html('Tổng phụ <span>'+ totalPrice+'đ</span>')
                $('#feeShip').html('Phí ship <span>0đ</span>')
                $('#grandTotal').html('Tổng cộng<span>'+ totalPrice+'đ</span>')

            },
            error: function (response) {

            }
        });
    }

    function paymentPaypal(){
        var address = document.getElementById("createAddress").value;
        if(address == null || address == ''){
            Swal.fire({
                icon: 'error',
                title: '${Message.ERROR_CHECKOUT_EMPTY_ADDRESS}',
                showConfirmButton: false,
                timer: 1500
            })
        }
        else {
            $("#formPayment").html('<form action="/paypal" method="post" id="paymentPaypal"><input name="price" value="'+totalPrice/23500+'" type="hidden">' +
                '<input name="address" value="'+address+'" type="hidden"></form>')
            $("#paymentPaypal").submit()
        }

    }
    function paymentCash(){
        var address = document.getElementById("createAddress").value;
        if(address == null || address == ''){
            Swal.fire({
                icon: 'error',
                title: '${Message.ERROR_CHECKOUT_EMPTY_ADDRESS}',
                showConfirmButton: false,
                timer: 1500
            })
        }
        else {
            $("#formPayment").html('<form action="/customer/cash" method="post" id="paymentCash"><input name="price" value="'+totalPrice+'" type="hidden">' +
                '<input name="address" value="'+address+'" type="hidden"></form>')
            $("#paymentCash").submit()
        }
    }

</script>
</body>
</html>
