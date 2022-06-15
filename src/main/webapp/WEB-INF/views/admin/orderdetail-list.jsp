<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 6/12/22
  Time: 10:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<%@ page import="static com.example.constant.SystemConstant.BASE_API" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="card">

    <div class="card-header">
        <h4 class="card-title">Order Detail List</h4>
    </div>
    <!--end card-header-->
    <div class="card-body">

        <!-- id="datatable" -->
        <table id="datatable"
               class="table table-bordered dt-responsive nowrap table-striped table-hover"
               style="border-collapse: collapse; border-spacing: 0; width: 100%;">
            <thead>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Total Money</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="o" items="${orderDetails}">
                <tr>
                    <td><img src="<%=BASE_API%>/image/product/${o.product.image}" alt="productImg"
                             height="40">
                        <p class="d-inline-block align-middle mb-0">
                            <a href=""
                               class="d-inline-block align-middle mb-0 product-name">${o.product.name}</a>
                            <br> <span class="text-muted font-13">size-08
														(Model 2020)</span>
                        </p></td>
                    <td>${o.quantity}</td>
                    <td>${o.product.price}</td>
                    <td>${o.totalMoney}</td>
                </tr>

            </c:forEach>

            </tbody>
        </table>
    </div>
</div>
</body>
</html>
