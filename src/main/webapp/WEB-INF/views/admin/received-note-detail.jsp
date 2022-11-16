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
        <h4 class="card-title">Detail</h4>
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
                <th>Sản phẩm</th>
                <th>Số lượng</th>
                <th>Giá nhập</th>
                <th>Tổng tiền</th>
                <th></th>
                <th></th>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="r" items="${receivedNoteDetail}">
                <tr>
                    <td>${r.id}</td>
                    <td><img src="/products/${r.product.image}" alt="productImg"
                             height="40">
                        <p class="d-inline-block align-middle mb-0">
                            <a href=""
                               class="d-inline-block align-middle mb-0 product-name">${r.product.name}</a>
                            <br> <span class="text-muted font-13">size-08
														(Model 2020)</span>
                        </p></td>
                    <td>${r.total}</td>
                    <td>${r.priceReceive}</td>
                    <td>${r.totalPrice.intValue()}</td>
                    <td><a class="btnEdit" onclick="openModalProduct(${r.id})"><i
                            class="ti-settings"></i></a></td>
                    <td><a class="btnDelete" onclick="deleteReceivedNoteDetail(${r.id})"><i
                            class="ti-trash"></i></a>
                    </td>
                </tr>

                <!-- The Modal -->
                <div class="modal fade" id="editReceivedDetailModal${r.id}">
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
                                <form id="formSubmitUpdate${r.id}" enctype="multipart/form-data">
                                    <div class="form-group row">
                                        <label
                                                class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Số lượng:</label>
                                        <div class="col-lg-9 col-xl-8">
                                            <input name="total" class="form-control" type="text"
                                                   value="${r.total}"/>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label
                                                class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Giá nhập:</label>
                                        <div class="col-lg-9 col-xl-8">
                                            <input name="priceReceive" class="form-control" type="text"
                                                   value="${r.priceReceive}"/>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <div class="col-lg-9 col-xl-8 offset-lg-3">
                                            <button name="Save" type="button"
                                                    onclick="updateReceivedNoteDetail(${r.id})"
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
            </c:forEach>

            </tbody>
        </table>
    </div>
</div>


<script type="text/javascript">

    function openModalProduct(id) {
        // $('#updateProductModal').show();
        $('#editReceivedDetailModal' + id).modal('show');
    }

    function updateReceivedNoteDetail(id) {
        var data = {};
        data["id"] = id;
        var formData = $('#formSubmitUpdate' + id).serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
        });
        console.log(data)

        $.ajax({
            type: 'PUT',
            url: '/api/received-detail',
            data: JSON.stringify(data),
            dataType: "json",
            contentType: "application/json",
            success: function () {
                Swal.fire({
                    icon: 'success',
                    title: 'Cập nhật thành công',
                    showConfirmButton: false,
                    timer: 2000,
                })
                setTimeout(() => window.location.href = "/admin/received-detail/"+${idReceivedNote}, 2000)
            },
            error: function () {
                Swal.fire({
                    icon: 'error',
                    title: 'Đã xảy ra lỗi vui lòng thử lại',
                    showConfirmButton: false,
                    timer: 2000,
                })
            }
        });
    }

    function deleteReceivedNoteDetail(id) {
        Swal.fire({
            title: 'Thông báo',
            text: "Xoá phiếu nhập",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '##1761fd',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Đồng ý!',
            cancelButtonText: 'Huỷ'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: '/api/received-note-detail?id=' + id,
                    type: 'DELETE',
                    contentType: 'application/json',
                    dataType: 'json',
                    success: function (result) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Xoá sản phẩm thành công',
                            showConfirmButton: false,
                            timer: 2000,
                        })
                        setTimeout(() => window.location.href = "/admin/received-detail/"+${idReceivedNote}, 2000)
                    },
                    error: function (error) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Xoá sản phẩm thành công',
                            showConfirmButton: false,
                            timer: 2000,
                        })
                        setTimeout(() => window.location.href = "/admin/received-detail/"+${idReceivedNote}, 2000)
                    }
                });
            }
        })
    }
</script>
</body>
</html>
