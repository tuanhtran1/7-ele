<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 21/07/2022
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>
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
                    <li class="breadcrumb-item active">Cart</li>
                </ol>
            </nav>
        </div>
    </div>
</section>
<main class="cart-page-main-block inner-page-sec-padding-bottom">
    <div class="cart_area cart-area-padding  ">
        <div class="container">
            <div class="page-section-title">
                <h1>Shopping Cart</h1>
            </div>
            <div class="row">
                <div class="col-12">
                    <form action="#" class="">
                        <!-- Cart Table -->
                        <div class="cart-table table-responsive mb--40">
                            <table class="table">
                                <!-- Head Row -->
                                <thead>
                                <tr>
                                    <th class="pro-remove"></th>
                                    <th class="pro-thumbnail">Hình Ảnh</th>
                                    <th class="pro-title">Sản phẩm</th>
                                    <th class="pro-price">Giá tiền</th>
                                    <th class="pro-quantity">Số lượng</th>
                                    <th class="pro-subtotal">Tổng cộng</th>
                                </tr>
                                </thead>
                                <tbody id="table-carts">


                                </tbody>
                            </table>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>

<script type="text/javascript">

    <security:authorize access="isAuthenticated()">



    function decrease(id){
        var data ={}
        data["id"] = id;
        data["quantity"] = parseInt($('#quantity-cart'+id).val()) - 1
        if(data.quantity == 0){
            deleteCart(id)
        }else updateCart(data)

    }

    function increase(id){
        var data ={}
        data["id"] = id;
        data["quantity"] = parseInt($('#quantity-cart'+id).val()) + 1
        updateCart(data)
    }

    getListCart(<security:authentication property="principal.id"/>)

    function getListCart(id) {
        $.ajax({
            url: "/api/carts?userId=" + id,
            type: 'GET',
            dataType: "json",
            contentType: 'application/json',
            success: function (response) {
                var totalPrice = 0, mount = response.length
                var result = '';
                $.each(response, function (index, item) {
                    totalPrice += item.totalMoney
                    result += '<tr>'
                    result += '<td class="pro-remove"><a type="button" onclick="deleteCart(' + item.id + ')"><i class="far fa-trash-alt"></i></a></td>'
                    result += '<td class="pro-thumbnail"><a href="#"><img src="/products/' + item.product.image + '" alt="Product"></a></td>'
                    result += '<td class="pro-title"><a href="#">' + item.product.name + '</a></td>'
                    result += '<td class="pro-price"><span>' + item.product.salePrice + 'đ</span></td>'

                    result += '<td class="pro-quantity">'
                    result += '<div class="pro-qty">'
                    result += '<div class="count-input-block">'
                    result += '<button class="pro-quantity" type="button" onclick="decrease(' + item.id + ')"><i class="far fa-minus-square"></i></button>'
                    result += '<input style="padding-left: 0px;" id="quantity-cart'+item.id+'" type="number" class="form-control text-center" readonly="readonly" value="' + item.quantity + '">'
                    result += '<button class="pro-quantity" type="button" onclick="increase(' + item.id + ')"><i class="far fa-plus-square"></i></button>'
                    result += '</div>'
                    result += '</div>'
                    result += '</td>'

                    result += '<td class="pro-subtotal"><span>' + item.totalMoney + 'đ</span></td>'

                    result += ' </tr>'
                })
                result += '<tr>' +
                    '<td colspan="6" class="actions">' +
                    '<div class="coupon-block"> ' +
                    '<div class="coupon-text"> ' +
                    '<label for="coupon_code">Mã giảm giá:</label> ' +
                    '<input type="text" name="coupon" class="input-text" id="coupon_code" value="" placeholder="Nhập mã giảm giá">' +
                    '</div>' +
                    '<div class="coupon-btn">' +
                    '<input type="submit" class="btn btn-outlined" name="coupon" placeholder="Áp dụng">' +
                    '</div>' +
                    '</div>' +
                    '<div style="justify-content: flex-end;" class="row">' +
                    '<div class="col-lg-6 col-12 right">' +
                    '<div class="cart-summary">' +
                    '<div class="cart-summary-wrap">' +
                    '<h4><span>Cart Summary</span></h4>' +
                    '<p>Tổng<span class="text-primary">' + totalPrice + 'đ</span></p>' +
                    '<p>Phí giao hàng <span class="text-primary">0đ</span></p> ' +
                    '<h2>Tổng số tiền<span class="text-primary">' + totalPrice + 'đ</span></h2>' +
                    '</div>' +
                    '<div class="cart-summary-button"> ' +
                    '<a style="width: 150px;" href="/customer/checkout/'+ <security:authentication property="principal.id"/> +'" class="checkout-btn c-btn btn--primary">Thanh toán</a> ' +
                    '</div> </div> </div> </div> </td> </tr>'
                $('#table-carts').html(result)
                // <button class="update-btn c-btn btn-outlined">Cập nhật giỏ</button>
            },
            error: function (response) {

            }
        });
    }

    function deleteCart(id) {
        Swal.fire({
            title: 'Thông báo',
            text: "Bạn có muốn xoá sản phẩm này không ?",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#61ab02',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Đồng ý!',
            cancelButtonText: 'Huỷ'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: '/api/cart/' + id,
                    type: 'DELETE',
                    contentType: 'application/json',
                    success: function (result) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Xoá thành công sản phẩm khỏi giỏ hàng',
                            showConfirmButton: false,
                            timer: 1500
                        })
                        getListCart(<security:authentication property="principal.id"/>)
                    },
                    error: function (error) {
                        Swal.fire({
                            icon: 'error',
                            title: 'Xoá bị lỗi! Vui lòng kiểm tra lại',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    }
                });
            }
        })
    }

    function updateCart(data) {
        $.ajax({
            type: 'PUT',
            url: '/api/cart',
            data: JSON.stringify(data),
            dataType: "json",
            contentType: "application/json",
            success: function () {
                getListCart(<security:authentication property="principal.id"/>)
            },
            error: function () {
                swal("Bạn đã thêm quá số lượng cho phép !");
            }
        });
    }

    // api cart
    callAPIcart(<security:authentication property="principal.id"/>)

    function callAPIcart(id) {
        $.ajax({
            url: "/api/carts?userId=" + id,
            type: 'GET',
            dataType: "json",
            contentType: 'application/json',
            success: function (response) {
                var totalPrice = 0, mount = response.length
                var result = '';
                $.each(response, function (index, item) {
                    totalPrice += item.totalMoney
                    result += '<div class="cart-product">'
                    result += '<a href="product-details.html" class="image">'
                    result += '<img src="/products/' + item.product.image + '" alt="">'
                    result += '</a>'

                    result += '<div class="content">'
                    result += '<h3 class="title">'
                    result += '<a href="product-details.html">' + item.product.name + '</a>'
                    result += '</h3>'
                    result += '<div class="price">Total: ' + item.quantity + ' x ' + item.product.salePrice + 'đ</div>'
                    result += '<button class="cross-btn" onclick="deleteCart(' + item.id + ')"><i class="fas fa-times"></i></button>'
                    result += '</div>'

                    result += ' </div>'

                })
                $('#carts-detail').html(result)
                $('#cart-info').html('<span class="text-number">' + response.length + '</span>' +
                    '<span class="text-item">Giỏ đồ</span>' +
                    '<span class="price">' + totalPrice + 'đ<i class="fas fa-chevron-down"></i></span>')

            },
            error: function (response) {
                $('#cart-dropdown-block #carts-detail').html('<span style="display: block; text-align: center; margin-bottom: 20px" class="price">Giỏ đồ đang trống</span>')
                $('#cart-info').html('<span class="text-number">' + 0 + '</span>' +
                    '<span class="text-item">Giỏ đồ</span>' +
                    '<span class="price">' + 0 + 'đ<i class="fas fa-chevron-down"></i></span>')

            }
        });
    }


    </security:authorize>


</script>
</body>
</html>
