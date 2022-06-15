<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 6/10/22
  Time: 9:13 PM
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
        <h4 class="card-title">Order List</h4>
    </div>
    <!--end card-header-->
    <div class="card-body">

        <!-- id="datatable" -->
        <table id="datatable"
               class="table table-bordered dt-responsive nowrap table-striped table-hover"
               style="border-collapse: collapse; border-spacing: 0; width: 100%;">
            <thead>
            <tr>
                <th>ID</th>
                <th>Customer name</th>
                <th>Total Money</th>
                <th>Address</th>
                <th>Created day</th>
                <th>Detail</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="o" items="${ordersList}">
                <tr>
                    <td>${o.id}</td>
                    <td>${o.user.name}</td>
                    <td>${o.totalMoney}</td>
                    <td>${o.address}</td>
                    <td>${o.createdDate}</td>
                    <td><a class="btnDetail" type="button" href="/admin/orderdetail-list/${o.id}"><i
                            class="las la-pen text-secondary font-16"></i></a>

                    </td>
                </tr>

            </c:forEach>

            </tbody>
        </table>
    </div>
</div>
<script>


</script>

</body>
</html>