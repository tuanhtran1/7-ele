<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 6/10/22
  Time: 9:13 PM
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
<div class="container-fluid">
    <!-- Page-Title -->
    <div class="row">
        <div class="col-sm-12">
            <div class="page-title-box">
                <div class="row">
                    <div class="col">
                        <h4 class="page-title">Product List</h4>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active">List</li>
                        </ol>
                    </div>
                    <!--end col-->
                    <div class="col-auto align-self-center">
                        <a href="#" class="btn btn-sm btn-outline-primary"
                           id="Dash_Date"> <span class="day-name" id="Day_Name">Today:</span>&nbsp;
                            <span class="" id="Select_date">Jan 11</span> <i
                                    data-feather="calendar" class="align-self-center icon-xs ms-1"></i>
                        </a>
                    </div>
                    <!--end col-->
                </div>
                <!--end row-->
            </div>
            <!--end page-title-box-->
        </div>
        <!--end col-->
    </div>
    <!--end row-->
    <!-- end page title end breadcrumb -->
    <div class="row">
        <div class="col-12">
            <div class="table-responsive">
                <table id="datatable" class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Author</th>
                        <th>Category</th>
                        <th>Price</th>
                        <th>Discount</th>
                        <th>Sale Price</th>
                        <th>Quantity</th>
                        <th>Decription</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="p" items="${products}">
                        <tr>
                            <td><img src="/products/${p.image}" alt="productImg"
                                     height="40">
                                <p class="d-inline-block align-middle mb-0">
                                    <a href=""
                                       class="d-inline-block align-middle mb-0 product-name">${p.name}</a>
                                    <br> <span class="text-muted font-13">size-08
														(Model 2020)</span>
                                </p></td>
                            <td>${p.author}</td>
                            <td>${p.category.value}</td>
                            <td>${p.price}</td>
                            <td>${p.discount}</td>
                            <td>${p.salePrice}</td>
                            <td>${p.quantity}</td>
                            <td>${p.description}</td>
                            <td>
                                <button type="button" data-toggle="tooltip" class="btnEdit btn btn-sm btn-outline-primary"
                                        onclick="editProduct(${p.id})"><i style="color: white" class="las la-pen text-secondary font-16"></i>
                                </button>
                                <!-- The Modal -->
                                <div class="modal fade" id="editProductModal${p.id}">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <h4 class="modal-title">Update Product</h4>
                                                <button type="button" class="btn-close"
                                                        data-bs-dismiss="modal"></button>
                                            </div>

                                            <!-- Modal body -->
                                            <div class="modal-body">
                                                <form id="formSubmitUpdate${p.id}" enctype="multipart/form-data">
                                                    <div class="form-group row">
                                                        <label
                                                                class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Product
                                                            Name:</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <input name="name" class="form-control" type="text"
                                                                   value="${p.name}"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label
                                                                class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Author:</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <input name="author" class="form-control" type="text"
                                                                   value="${p.author}"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label
                                                                class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Category:</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <select name="categoryCode" class="form-control col-lg-9 col-xl-8" id="category">
                                                                <c:forEach var="category" items="${categories}">
                                                                    <option <c:if test="${category.value == p.category.value}">selected="selected"</c:if>
                                                                            value="${category.code}">${category.value}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label
                                                                class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Price:</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <input name="price" class="form-control" type="text"
                                                                   value="${p.price}"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label
                                                                class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Discount(%):</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <input name="discount" class="form-control" type="text"
                                                                   value="${p.discount}"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <label
                                                                class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Description:</label>
                                                        <div class="col-lg-9 col-xl-8">
                                                            <input name="description" class="form-control" type="text"
                                                                   value="${p.description}"/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <div class="col-lg-9 col-xl-8 offset-lg-3">
                                                            <button name="Save" type="button"
                                                                    onclick="btnUpdate(${p.id})"
                                                                    class="btn btn-sm btn-outline-primary">Save
                                                            </button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>

                                            <!-- Modal footer -->
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">
                                                    Close
                                                </button>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <button type="button" onclick="deleteProduct(${p.id})" class="btnDelete btn btn-sm btn-outline-danger"><i
                                        class="las la-trash-alt text-secondary font-16 "></i></button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- end col -->
    </div>
    <!-- end row -->
    <div class="card" style="width: 40%;">
        <div class="card-header">
            <div class="row align-items-center">
                <div class="col">
                    <h4 class="card-title">Product</h4>
                </div>
                <!--end col-->
            </div>
            <!--end row-->
        </div>
        <!--end card-header-->
        <div class="card-body">
            <!-- Thông báo -->
            <c:choose>
                <c:when test="${check==null}">
                </c:when>
                <c:when test="${check == 1}">
                    <div class="alert alert-success border-0" role="alert">
                        <strong>Notification!</strong> ${message}.
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="alert alert-danger border-0" role="alert">
                        <strong>Notification!</strong> ${message}.
                    </div>
                </c:otherwise>
            </c:choose>

            <form id="formSubmitAdd" enctype="multipart/form-data">
                <div class="form-group row">
                    <label
                            class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Product Name:</label>
                    <div class="col-lg-9 col-xl-8">
                        <input id="name" name="name" class="form-control" type="text"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label
                            class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Author:</label>
                    <div class="col-lg-9 col-xl-8">
                        <input id="author" name="author" class="form-control" type="text"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label
                            class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Category:</label>
                    <div class="col-lg-9 col-xl-8">
                        <select name="categoryCode" class="form-control col-lg-9 col-xl-8" id="district">
                            <option>---Choose category---</option>
                            <c:forEach var="category" items="${categories}">
                                <option value="${category.code}">${category.value}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label
                            class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Price:</label>
                    <div class="col-lg-9 col-xl-8">
                        <input id="price" name="price" class="form-control" type="number" min="0"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label
                            class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Discount(%):</label>
                    <div class="col-lg-9 col-xl-8">
                        <input id="discount" name="discount" class="form-control" type="number" min="0"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label
                            class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Description:</label>
                    <div class="col-lg-9 col-xl-8">
                        <input id="description" name="description" class="form-control" type="text"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label
                            class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Image(or not)</label>
                    <div class="col-lg-9 col-xl-8">
                        <input name="image" type="file" id="input-file-now"
                               class="dropify">
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-lg-9 col-xl-8 offset-lg-3">
                        <button name="Save" type="button" id="btnAdd"
                                class="btn btn-sm btn-outline-primary">Add
                        </button>
                        <button formaction="" type="submit"
                                class="btn btn-sm btn-outline-danger">Cancel
                        </button>
                    </div>
                </div>
            </form>
        </div>
        <!--end card-body-->
    </div>
    <!--end card-->
</div>

<script src="/template/admin/assets/js/jquery.min.js"></script>

<script type="text/javascript">


    $('#btnAdd').click(function (e) {
        e.preventDefault();
        var obj = $("#formSubmitAdd");
        var formData = new FormData();

        var productRequest = {};
        var params = $(obj).serializeArray();

        $.each(params, function (i, v) {
            productRequest["" + v.name + ""] = v.value;
        });
        $.each($(obj).find("input[type='file']"), function (i, tag) { // tag là 1 <input>
            formData.append(tag.name, tag.files[0]);
        });
        formData.append('productRequest', JSON.stringify(productRequest))

        if (productRequest.name === "") {
            Swal.fire({
                icon: 'error',
                title: '${Message.ERROR_PRODUCT_NAME_EMPTY}',
                showConfirmButton: false,
                timer: 1500
            })
            return;
        }
        if (productRequest.category === "") {
            Swal.fire({
                icon: 'error',
                title: '${Message.ERROR_PRODUCT_CATEGORY_EMPTY}',
                showConfirmButton: false,
                timer: 1500
            })
            return;
        }
        if (productRequest.author === "") {
            Swal.fire({
                icon: 'error',
                title: '${Message.ERROR_PRODUCT_AUTHOR_EMPTY}',
                showConfirmButton: false,
                timer: 1500
            })
            return;
        }
        if (productRequest.price === "") {
            Swal.fire({
                icon: 'error',
                title: '${Message.ERROR_PRODUCT_PRICE_EMPTY}',
                showConfirmButton: false,
                timer: 1500
            })
            return;
        }
        if (productRequest.discount === "") {
            Swal.fire({
                icon: 'error',
                title: '${Message.ERROR_PRODUCT_DISCOUNT_EMPTY}',
                showConfirmButton: false,
                timer: 1500
            })
            return;
        }
        if (productRequest.description === "") {
            Swal.fire({
                icon: 'error',
                title: '${Message.ERROR_PRODUCT_DESCRIPTION_EMPTY}',
                showConfirmButton: false,
                timer: 1500
            })
            return;
        }
        if (productRequest.image === "") {
            Swal.fire({
                icon: 'error',
                title: '${Message.ERROR_PRODUCT_IMAGE_EMPTY}',
                showConfirmButton: false,
                timer: 1500
            })
            return;
        }

        $.ajax({
            url: '/api/product',
            type: 'POST',
            processData: false,
            contentType: false,
            data: formData,
            enctype: 'multipart/form-data',
            success: function (result) {
                Swal.fire({
                    icon: 'success',
                    title: '${Message.MESSAGE_PRODUCT_CREATED_SUCCEED}',
                    showConfirmButton: false,
                    timer: 2000,
                })
                setTimeout(() => window.location.href = "/admin/product-list", 2000);
            },
            error: function (error) {
                Swal.fire({
                    icon: 'danger',
                    title: '${Message.ERROR_PRODUCT_CREATED_FAILED}',
                    showConfirmButton: false,
                    timer: 2000,
                })
            }
        });
    });

    function callApiProduct(id) {
        $.ajax({
            url: '/api/product?id=' + id,
            type: 'GET',
            contentType: 'application/json',
            dataType: 'json',
            success: function (result) {

            },
            error: function (error) {
                alert(error)
            }
        });
    }

    function editProduct(id) {
        callApiProduct(id);
        console.log(id);
        openModalProduct(id);
    }

    function openModalProduct(id) {
        // $('#updateProductModal').show();
        $('#editProductModal' + id).modal('show');
    }

    function btnUpdate(id) {
        var data = {};
        data["id"] = id;
        var formData = $('#formSubmitUpdate' + id).serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
        });

        $.ajax({
            type: 'PUT',
            url: '/api/product',
            data: JSON.stringify(data),
            dataType: "json",
            contentType: "application/json",
            success: function () {
                Swal.fire({
                    icon: 'success',
                    title: '${Message.MESSAGE_PRODUCT_UPDATED_SUCCEED}',
                    showConfirmButton: false,
                    timer: 2000,
                })
                setTimeout(() => window.location.href = "/admin/product-list", 3000);
                console.log('success')
            },
            error: function () {
                Swal.fire({
                    icon: 'danger',
                    title: '${Message.ERROR_PRODUCT_UPDATED_FAILED}',
                    showConfirmButton: false,
                    timer: 2000,
                })
            }
        });
        console.log(data)
    }

    function deleteProduct(id) {
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
                    url: '/api/product?id=' + id,
                    type: 'DELETE',
                    contentType: 'application/json',
                    dataType: 'json',
                    success: function (result) {
                        Swal.fire({
                            icon: 'success',
                            title: '${Message.MESSAGE_PRODUCT_DELETED_SUCCEED}',
                            showConfirmButton: false,
                            timer: 2000,
                        })
                        setTimeout(() => window.location.href = "/admin/product-list", 2000);

                    },
                    error: function (error) {
                        Swal.fire({
                            icon: 'success',
                            title: '${Message.ERROR_PRODUCT_DELETED_FAILED}',
                            showConfirmButton: false,
                            timer: 2000,
                        })
                        setTimeout(() => window.location.href = "/admin/product-list", 2000);
                    }
                });
            }
        })
    }

</script>
</body>
</html>
