<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 23/08/2022
  Time: 00:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <li class="breadcrumb-item active">My Account</li>
                </ol>
            </nav>
        </div>
    </div>
</section>
<div class="page-section inner-page-sec-padding">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="row">
                    <!-- My Account Tab Menu Start -->
                    <div class="col-lg-3 col-12">
                        <div class="myaccount-tab-menu nav" role="tablist">
                            <a href="#dashboad" class="active" data-toggle="tab"><i class="fas fa-tachometer-alt"></i>
                                Dashboard</a>
                            <a href="#orders" data-toggle="tab"><i class="fa fa-cart-arrow-down"></i> Đơn hàng</a>
                            <a href="#address-edit" data-toggle="tab"><i class="fa fa-map-marker"></i>
                                Địa chỉ</a>
                            <a href="#account-info" data-toggle="tab"><i class="fa fa-user"></i> Thông tin tài khoản</a>
                            <a href="/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
                        </div>
                    </div>
                    <!-- My Account Tab Menu End -->
                    <!-- My Account Tab Content Start -->
                    <div class="col-lg-9 col-12 mt--30 mt-lg--0">
                        <div class="tab-content" id="myaccountContent">
                            <!-- Single Tab Content Start -->
                            <div class="tab-pane fade show active" id="dashboad" role="tabpanel">
                                <div class="myaccount-content">
                                    <h3>Dashboard</h3>
                                    <div class="welcome mb-20">
                                        <p>Hello, <strong>Alex Tuntuni</strong> (If Not <strong>Tuntuni
                                            !</strong><a href="/customer/logout" class="logout">
                                            Logout</a>)</p>
                                    </div>
                                    <p class="mb-0">From your account dashboard. you can easily check &amp; view
                                        your
                                        recent orders, manage your shipping and billing addresses and edit your
                                        password and account details.</p>
                                </div>
                            </div>
                            <!-- Single Tab Content End -->
                            <!-- Single Tab Content Start -->
                            <div class="tab-pane fade" id="orders" role="tabpanel">
                                <div class="myaccount-content">
                                    <h3>Đơn hàng</h3>
                                    <div class="myaccount-table table-responsive text-center">
                                        <table class="table table-bordered">
                                            <thead class="thead-light">
                                            <tr>
                                                <th>Đơn hàng</th>
                                                <th>Ngày</th>
                                                <th>Phương thức thanh toán</th>
                                                <th>Trạng thái</th>
                                                <th>Tổng tiền</th>
                                                <th>Chi tiết</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach var="o" items="${order}">
                                                <tr>
                                                    <td>ĐH${o.id}</td>
                                                    <td>${o.createdDate}</td>
                                                    <td>${o.paymentType}</td>
                                                    <td>${o.status}</td>
                                                    <td>${o.totalMoney.intValue()}đ</td>
                                                    <td><a type="button" data-toggle="tooltip" onclick="showModal(${o.id})" class="btn">Xem</a></td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Tab Content End -->
                            <!-- Single Tab Content Start -->
                            <div class="tab-pane fade" id="address-edit" role="tabpanel">
                                <div class="myaccount-content">
                                    <h3>Billing Address</h3>
                                    <address>
                                        <p><strong>Alex Tuntuni</strong></p>
                                        <p>1355 Market St, Suite 900 <br>
                                            San Francisco, CA 94103</p>
                                        <p>Mobile: (123) 456-7890</p>
                                    </address>
                                    <a href="#" class="btn btn--primary"><i class="fa fa-edit"></i>Edit
                                        Address</a>
                                </div>
                            </div>
                            <!-- Single Tab Content End -->
                            <!-- Single Tab Content Start -->
                            <div class="tab-pane fade" id="account-info" role="tabpanel">
                                <div class="myaccount-content">
                                    <h3>Account Details</h3>
                                    <div class="account-details-form">
                                        <form action="#">
                                            <div class="row">
                                                <div class="col-12  mb--30">
                                                    <input id="display-name" placeholder="Họ tên" type="text">
                                                </div>
                                                <div class="col-12  mb--30">
                                                    <input id="phone" placeholder="Số điện thoại" type="text">
                                                </div>
                                                <div class="col-12  mb--30">
                                                    <h4>Thay đổi mật khẩu</h4>
                                                </div>
                                                <div class="col-12  mb--30">
                                                    <input id="current-pwd" placeholder="Current Password" type="password">
                                                </div>
                                                <div class="col-lg-6 col-12  mb--30">
                                                    <input id="new-pwd" placeholder="New Password" type="password">
                                                </div>
                                                <div class="col-lg-6 col-12  mb--30">
                                                    <input id="confirm-pwd" placeholder="Confirm Password" type="password">
                                                </div>
                                                <div class="col-12">
                                                    <button class="btn btn--primary">Save Changes</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Tab Content End -->
                        </div>
                    </div>
                    <!-- My Account Tab Content End -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<div class="modal fade modal-quick-view" id="quickModal" tabindex="-1" role="dialog"
     aria-labelledby="quickModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <button type="button" class="close modal-close-btn ml-auto" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <div class="product-details-modal">
                <div class="row">
                    <div class="col-12">
                        <form action="#" class="">
                            <!-- Cart Table -->
                            <div class="cart-table table-responsive mb--40">
                                <table class="table">
                                    <!-- Head Row -->
                                    <thead>
                                    <tr>
                                        <th class="pro-thumbnail">Image</th>
                                        <th class="pro-title">Product</th>
                                        <th class="pro-price">Price</th>
                                        <th class="pro-quantity">Quantity</th>
                                        <th class="pro-subtotal">Total</th>
                                    </tr>
                                    </thead>
                                    <tbody id="body-product">
                                    <!-- Product Row -->
                                    <tr>
                                        <td class="pro-thumbnail"><a href="#"><img src="image/products/product-1.jpg" alt="Product"></a></td>
                                        <td class="pro-title"><a href="#">Rinosin Glasses</a></td>
                                        <td class="pro-price"><span>$395.00</span></td>
                                        <td class="pro-quantity">
                                            <div class="pro-qty">
                                                <div class="count-input-block">
                                                    <input type="number" class="form-control text-center" value="1" readonly>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="pro-subtotal"><span>$395.00</span></td>
                                    </tr>
                                    <!-- Product Row -->
                                    <tr>
                                        <td class="pro-thumbnail"><a href="#"><img src="image/products/product-2.jpg" alt="Product"></a></td>
                                        <td class="pro-title"><a href="#">Rinosin Glasses</a></td>
                                        <td class="pro-price"><span>$395.00</span></td>
                                        <td class="pro-quantity">
                                            <div class="pro-qty">
                                                <div class="count-input-block">
                                                    <input type="number" class="form-control text-center" value="1">
                                                </div>
                                            </div>
                                        </td>
                                        <td class="pro-subtotal"><span>$395.00</span></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="modal-footer">

            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function showModal(id) {
        $('#quickModal').modal()
        $.ajax({
            url: "/api/orderdetail?idOrder=" + id,
            type: 'GET',
            dataType: "json",
            contentType: 'application/json',
            success: function (response) {
                var result = ''
                $.each(response, function (index, item) {
                   result += '<tr>' +
                       '<td class="pro-thumbnail"><a ><img src="/products/'+item.product.image+'" alt="Product"></a></td> ' +
                       '<td class="pro-title"><a>'+ item.product.name +'</a></td> <td class="pro-price"><span>'+ item.product.salePrice +'</span></td> ' +
                       '<td class="pro-quantity"> <div class="pro-qty"> <div class="count-input-block"> <input type="number" class="form-control text-center" value="'+ item.quantity+'" readonly></div></div></td> ' +
                       '<td class="pro-subtotal"><span>'+item.totalMoney+'đ</span></td>' +
                       '</tr>'
                })
                $('#body-product').html(result)
            },
            error: function (response) {
                console.log(response.errors);
            }
        });
    }
</script>
</body>
</html>
