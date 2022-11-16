<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 23/08/2022
  Time: 00:49
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
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active">Order Complete</li>
                </ol>
            </nav>
        </div>
    </div>
</section>
<section class="order-complete inner-page-sec-padding-bottom">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="order-complete-message text-center">
                    <h1>Cảm ơn rất nhiều</h1>
                    <p>Đơn đặt hàng của bạn đã được nhận..</p>
                </div>
                <ul class="order-details-list">
                    <li>Mã đơn hàng: <strong>${order.id}</strong></li>
                    <li>Ngày: <strong>${order.createdDate}</strong></li>
                    <li>Tổng tiền: <strong>${order.totalMoney.intValue()}đ</strong></li>
                    <li>Phương thức giao dịch: <strong>${order.paymentType}</strong></li>
                </ul>
                <h3 class="order-table-title">Chi tiết đơn hàng</h3>
                <div class="table-responsive">
                    <table class="table order-details-table">
                        <thead>
                        <tr>
                            <th>Product</th>
                            <th>Total</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${orderDetail}" var="od">
                            <tr>
                                <td>${od.product.name}<strong>× ${od.quantity}</strong></td>
                                <td><span>${od.totalMoney.intValue()}đ</span></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                        <tfoot>
                        <tr>
                            <th>Hình thức:</th>
                            <td>${order.paymentType}</td>
                        </tr>
                        <tr>
                            <th>Tổng tiền:</th>
                            <td><span>${order.totalMoney.intValue()}đ</span></td>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
