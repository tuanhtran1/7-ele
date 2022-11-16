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
<!-- Page-Title -->
<div class="row">
    <div class="col-sm-12">
        <div class="page-title-box">
            <div class="row">
                <div class="col">
                    <h4 class="page-title">Analytics</h4>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Dastone</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div><!--end col-->
                <div class="col-auto align-self-center">
                    <a href="#" class="btn btn-sm btn-outline-primary" id="Dash_Date">
                        <span class="ay-name" id="Day_Name">Today:</span>&nbsp;
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
<div class="row">
    <div class="col-lg-10">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-3">
                <div class="card report-card">
                    <div class="card-body">
                        <div class="row d-flex justify-content-center">
                            <div id="totalOrder" class="col">
                                <p class="text-dark mb-0 fw-semibold">Tổng số đơn</p>
                                <h3 class="m-0">24k</h3>
                            </div>
                            <div class="col-auto align-self-center">
                                <div class="report-main-icon bg-light-alt">
                                    <i data-feather="users" class="align-self-center text-muted icon-sm"></i>
                                </div>
                            </div>
                        </div>
                    </div><!--end card-body-->
                </div><!--end card-->
            </div> <!--end col-->
            <div class="col-md-6 col-lg-3">
                <div class="card report-card">
                    <div class="card-body">
                        <div class="row d-flex justify-content-center">
                            <div id="totalWaiting" class="col">
                                <p class="text-dark mb-0 fw-semibold">Số đơn chờ duyệt</p>
                                <h3 class="m-0">24k</h3>
                            </div>
                            <div class="col-auto align-self-center">
                                <div class="report-main-icon bg-light-alt">
                                    <i data-feather="users" class="align-self-center text-muted icon-sm"></i>
                                </div>
                            </div>
                        </div>
                    </div><!--end card-body-->
                </div><!--end card-->
            </div> <!--end col-->
            <div class="col-md-6 col-lg-3">
                <div class="card report-card">
                    <div class="card-body">
                        <div class="row d-flex justify-content-center">
                            <div id="totalAccepted" class="col">
                                <p class="text-dark mb-0 fw-semibold">Số đơn đã chấp nhận</p>
                                <h3 class="m-0">24k</h3>
                            </div>
                            <div class="col-auto align-self-center">
                                <div class="report-main-icon bg-light-alt">
                                    <i data-feather="users" class="align-self-center text-muted icon-sm"></i>
                                </div>
                            </div>
                        </div>
                    </div><!--end card-body-->
                </div><!--end card-->
            </div> <!--end col-->
            <div class="col-md-6 col-lg-3">
                <div class="card report-card">
                    <div class="card-body">
                        <div class="row d-flex justify-content-center">
                            <div id="totalCanceled" class="col">
                                <p class="text-dark mb-0 fw-semibold">Số đơn đã huỷ</p>
                                <h3 class="m-0">24k</h3>
                            </div>
                            <div class="col-auto align-self-center">
                                <div class="report-main-icon bg-light-alt">
                                    <i data-feather="users" class="align-self-center text-muted icon-sm"></i>
                                </div>
                            </div>
                        </div>
                    </div><!--end card-body-->
                </div><!--end card-->
            </div> <!--end col-->
        </div>
    </div>

</div>
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
                <th>Payment Type</th>
                <th>Detail</th>
                <th>Status</th>
                <th></th>
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
                    <td>${o.paymentType}</td>
                    <td><a class="btnDetail" type="button" href="/admin/orderdetail-list/${o.id}"><i
                            class="las la-pen text-secondary font-16"></i></a>

                    </td>
                    <c:choose>
                        <c:when test="${o.status == 'WAITING'}">
                            <td><span class="badge badge-soft-warning" style="font-weight: bold;">WAITING</span></td>

                        </c:when>
                        <c:when test="${o.status == 'CANCELED'}">
                            <td><span class="badge badge-soft-danger" style="font-weight: bold;">CANCELED</span></td>

                        </c:when>
                        <c:otherwise>
                            <td><span class="badge badge-soft-success"
                                      style="font-weight: bold;">ACCEPTED</span></td>
                        </c:otherwise>
                    </c:choose>
                    <td>
                        <div class="float-end">
                            <div class="dropdown d-inline-block">
                                <a class="dropdown-toggle arrow-none" id="dLabel1" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                    <i class="las la-ellipsis-v font-24 text-muted"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dLabel1" style="">
                                    <a onclick="confirmOrder(${o.id})" type="button" class="dropdown-item">Confirm</a>
                                    <a onclick="cancelOrder(${o.id})" type="button" class="dropdown-item">Cancel</a>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>

            </c:forEach>

            </tbody>
        </table>
    </div>
</div>
<script type="text/javascript">

    function confirmOrder(id) {
        Swal.fire({
            title: 'Thông báo',
            text: "Xác nhận đơn hàng",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '##1761fd',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Đồng ý!',
            cancelButtonText: 'Huỷ'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: '/api/order/confirm?id=' + id,
                    type: 'PUT',
                    contentType: 'application/json',
                    dataType: 'json',
                    success: function (result) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Đã xác nhận đơn hàng ',
                            showConfirmButton: false,
                            timer: 2000,
                        })
                        setTimeout(() => window.location.href = "/admin/order-list", 2000)
                    },
                    error: function (error) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Đã xác nhận đơn hàng ',
                            showConfirmButton: false,
                            timer: 2000
                        })
                        setTimeout(() => window.location.href = "/admin/order-list", 2000)
                    }
                });
            }
        })
    }

    function cancelOrder(id) {
        Swal.fire({
            title: 'Thông báo',
            text: "Huỷ đơn hàng",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '##1761fd',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Đồng ý!',
            cancelButtonText: 'Huỷ'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: '/api/order/cancel?id=' + id,
                    type: 'PUT',
                    contentType: 'application/json',
                    dataType: 'json',
                    success: function (result) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Đã huỷ đơn hàng ',
                            showConfirmButton: false,
                            timer: 2000,
                        })
                        setTimeout(() => window.location.href = "/admin/order-list", 2000)
                    },
                    error: function (error) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Đã huỷ đơn hàng ',
                            showConfirmButton: false,
                            timer: 2000,
                        })
                        setTimeout(() => window.location.href = "/admin/order-list", 2000)
                    }
                });
            }
        })
    }

    $.ajax({
        url: "/api/order/statistic",
        type: 'GET',
        dataType: "json",
        contentType: 'application/json',
        success: function (response) {
            $('#totalOrder').html('<p class="text-dark mb-0 fw-semibold">Tổng số đơn</p> <h3 class="m-0">' + response.totalOrder + '</h3>')
            $('#totalWaiting').html('<p class="text-dark mb-0 fw-semibold">Số đơn chờ duyệt</p> <h3 class="m-0">' + response.totalWaiting + '</h3>')
            $('#totalAccepted').html('<p class="text-dark mb-0 fw-semibold">Số đơn đã chấp nhận</p> <h3 class="m-0">' + response.totalAccepted + '</h3>')
            $('#totalCanceled').html('<p class="text-dark mb-0 fw-semibold">Số đơn đã huỷ</p> <h3 class="m-0">' + response.totalCanceled + '</h3>')
        },
        error: function (response) {

        }
    })

</script>
</body>
</html>