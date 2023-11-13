<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 15/08/2022
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="card">
    <div class="card-header">
        <h4 class="card-title">Danh sách phiếu nhập</h4>
    </div>
    <!--end card-header-->
    <div class="card-body">

        <!-- id="datatable" -->
        <table id="datatable"
               class="table table-bordered dt-responsive nowrap table-striped table-hover"
               style="border-collapse: collapse; border-spacing: 0; width: 100%;">
            <thead>
            <tr>
                <th>Mã PN</th>
                <th>Ngày</th>
                <th>Nhân viên thực hiện</th>
                <th>Mã kho</th>
                <th>Chi tiết</th>
                <th></th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="r" items="${receivedNote}">
                <tr>
                    <td>PN${r.id}</td>
                    <td>${r.createdDate}</td>
                    <td>${r.user.name}</td>
                    <td>${r.warehouse.name}</td>
                    <td><a
                            href="/admin/received-detail/${r.id}">Chi
                        tiết</a></td>
                    <td><a class="btnEdit"
                           href="product/phieuxuat/${pd.maPX.trim()}/${id_NV}.htm?lnkEdit"><i
                            class="ti-settings"></i></a></td>
                    <security:authorize access="hasAnyRole('ADMIN','MANAGER')">
                        <td><a class="btnDelete" onclick="deleteReceivedNote(${r.id})"><i
                                class="ti-trash"></i></a>
                        </td>
                    </security:authorize>
                    <security:authorize access="hasAnyRole('STAFF')">
                        <td></td>
                    </security:authorize>
                </tr>
            </c:forEach>

            </tbody>
        </table>
    </div>
</div>
<div class="row">
    <div class="col-lg-3">
        <div class="card">
            <div class="card-header">
                <div class="row align-items-center">
                    <div class="col">
                        <h4 class="card-title">Lập phiếu nhập</h4>
                    </div>
                    <!--end col-->
                </div>
                <!--end row-->
            </div>
            <!--end card-header-->
            <div class="card-body">
                <button style="height: 70px;" name="" onclick="addNote()"
                        class="btn btn-sm btn-outline-primary">Tạo phiếu nhập
                </button>
            </div>
            <!--end card-body-->
        </div>
        <!--end card-->
    </div>
    <!--end col-->
    <div class="col-lg-9">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Danh sách kho </h4>
                <p class="text-muted mb-0">
                    DataTables has most features enabled by default, so all you
                    need to do to use it with your own tables is to call the
                    construction function:
                    <!-- <code>$().DataTable();</code> -->
                    .
                </p>
            </div>
            <!--end card-header-->
            <div class="card-body">
                <!-- id="datatable" -->
                <table id="datatable"
                       class="table table-bordered dt-responsive nowrap table-striped table-hover"
                       style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                    <thead>
                    <tr>
                        <th>Mã Kho</th>
                        <th>Tên Kho</th>
                        <th>Địa chỉ</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="w" items="${warehouse}">
                        <tr>
                            <td>MK${w.id}</td>
                            <td>${w.name}</td>
                            <td>${w.address}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!--end col-->
</div>
<!-- The Modal -->
<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
     aria-hidden="true" id="addReceivedNote">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Tạo phiếu nhập</h4>
                <button type="button" class="btn-close"
                        data-bs-dismiss="modal"></button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <form id="formAddReceivedNote" method="post">
                    <div class="form-group row">
                        <label
                                class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Người thực hiện</label>
                        <div class="col-lg-9 col-xl-8">
                            <input name="name" class="form-control"
                                   type="text" value="<security:authentication property="principal.fullName"/>"
                                   readonly="true"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label
                                class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Kho</label>
                        <div class="col-lg-9 col-xl-8">
                            <select name="warehouseId" class="form-control col-lg-9 col-xl-8" id="warehouse">
                                <option value="">---Chọn kho---</option>
                                <c:forEach var="w" items="${warehouse}">
                                    <option value="${w.id.intValue()}">${w.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label
                                class="col-xl-3 col-lg-3 text-end mb-lg-0 align-self-center">Sản phẩm</label>
                        <div class="col-lg-9 col-xl-8">
                            <table id="productItem" class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">Tên</th>
                                    <th scope="col">Giá nhập về</th>
                                    <th scope="col">Số lượng</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><label> <select name="productId" class="form-control col-lg-9 col-xl-8"
                                                        id="product">
                                        <option>---Chọn sản phẩm---</option>
                                        <c:forEach var="p" items="${products}">
                                            <option value="${p.id}">${p.name}</option>
                                        </c:forEach>
                                    </select></label></td>
                                    <td><label><input type="number" name="price" class="form-control"/></label></td>
                                    <td><label><input type="number" name="total" class="form-control"/></label></td>
                                </tr>
                                </tbody>
                            </table>
                            <button type="button" onclick="addDetailProduct()" class="btn btn-sm btn-outline-success"><i
                                    class="fa fa-plus" aria-hidden="true"></i></button>
                        </div>
                    </div>
                </form>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button onclick="addReceivedNoteDetail()" type="button" class="btn btn-primary" data-bs-dismiss="modal">
                    Lưu
                </button>
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">
                    Đóng
                </button>
            </div>

        </div>
    </div>
</div>

<script type="text/javascript">

    var indexRow = 0;

    function addNote() {
        openModalNote();
    }

    function openModalNote() {
        $('#addReceivedNote').modal('show');
    }

    function addDetailProduct() {
        indexRow++
        var row = '<tr>' +
            '<td><label> ' +
            '<select name="productId" class="form-control col-lg-9 col-xl-8" id="product"> <option>---Chọn sản phẩm---</option>' +
            '<c:forEach var="p" items="${products}"> <option value="${p.id}">${p.name}</option></c:forEach> </select>' +
            '</label></td> ' +
            '<td><label><input type="number" name="price" class="form-control"/></label></td> ' +
            '<td><label><input type="number" name="total" class="form-control"/></label></td>' +
            '</tr>'
        $('#productItem').find('tbody').append(row)
    }

    $("#addReceivedNote").on("hidden.bs.modal", function () {
        // put your default event here
        $("#productItem tbody tr").remove()
        addDetailProduct()
        indexRow = 0;
    });

    function addReceivedNoteDetail() {
        var obj = $("#formAddReceivedNote")
        var params = $(obj).serializeArray();
        var receivedNoteRequest = {};

        var products = new Array()

        $.each(params, function (i, v) {
            if (v.name != 'price' || v.name != 'total' || v.name != 'productId') {
                receivedNoteRequest["" + v.name + ""] = v.value;
            }
        });

        $.each($("#productItem").find("tbody tr"), function () {
            var dataProd = {}
            $.each($(this).find("input"), function (i, v) {
                dataProd["" + v.name + ""] = v.value
            });
            $.each($(this).find("select"), function (i, v) {
                dataProd["" + v.name + ""] = v.value
            });
            console.log(dataProd)
            products.push(dataProd)
        });
        receivedNoteRequest['products'] = products
        receivedNoteRequest['userId'] = <security:authentication property="principal.id"/>
            console.log(receivedNoteRequest)
        addReceivedNote(receivedNoteRequest)
    }

    function addReceivedNote(data) {

        $.ajax({
            type: 'POST',
            url: '/api/received-note',
            data: JSON.stringify(data),
            dataType: "json",
            contentType: "application/json",
            success: function (result) {
                Swal.fire({
                    icon: 'success',
                    title: 'Đã thêm phiếu nhập',
                    showConfirmButton: false,
                    timer: 2000,
                })
                setTimeout(() => window.location.href = "/admin/received-note", 2000);
            },
            error: function (error) {
                Swal.fire({
                    icon: 'danger',
                    title: 'Đã có lỗi vui lòng thử lại',
                    showConfirmButton: false,
                    timer: 2000,
                })
            }
        });
    }

    function deleteReceivedNote(id) {
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
                    url: '/api/received-note?id=' + id,
                    type: 'DELETE',
                    contentType: 'application/json',
                    dataType: 'json',
                    success: function (result) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Xoá phiếu nhập thành công',
                            showConfirmButton: false,
                            timer: 2000,
                        })
                        setTimeout(() => window.location.href = "/admin/received-note", 2000)
                    },
                    error: function (error) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Xoá phiếu nhập thành công',
                            showConfirmButton: false,
                            timer: 2000,
                        })
                        setTimeout(() => window.location.href = "/admin/received-note", 2000)
                    }
                });
            }
        })
    }

</script>
</body>
</html>
