<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title><dec:title default="Trang chủ quản trị"/></title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta content="Premium Multipurpose Admin & Dashboard Template"
          name="description"/>
    <meta content="" name="author"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

    <!-- App favicon -->
    <link rel="shortcut icon" href="/template/admin/assets/images/favicon.ico">
    <%--    <link href="/admin/plugins/leaflet/leaflet.css" rel="stylesheet">--%>
    <%--    <link href="/admin/plugins/lightpick/lightpick.css" rel="stylesheet">--%>
    <link href="/template/admin/plugins/dropify/css/dropify.min.css" rel="stylesheet">

    <!-- jvectormap -->
    <link href="/template/admin/plugins/jvectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet">

    <!-- DataTables -->
    <link href="/template/admin/plugins/datatables/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css">
    <link href="/template/admin/plugins/datatables/buttons.bootstrap5.min.css" rel="stylesheet" type="text/css">


    <!-- App css -->
    <link href="/template/admin/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/template/admin/assets/css/icons.min.css" rel="stylesheet" type="text/css"/>
    <link href="/template/admin/assets/css/metisMenu.min.css" rel="stylesheet" type="text/css"/>
    <link href="/template/admin/plugins/daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css"/>
    <link href="/template/admin/assets/css/app.min.css" rel="stylesheet" type="text/css"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">


    <!-- Responsive datatable examples -->
    <link href="/template/admin/plugins/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css">

    <%--    jquery--%>
    <script src="/template/admin/assets/js/jquery.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
        .btnDelete, .btnEdit {
            font-size: 15px;
        }

        .btnDelete {
            color: red;
        }

        .btnEdit {
            color: #1761fd;
        }
    </style>
</head>
<body class="">
<!-- leftside-bar -->
<%@ include file="/common/admin/menu.jsp" %>

<div class="page-wrapper">
    <!-- topbar -->
    <%@ include file="/common/admin/header.jsp" %>
    <!-- topbar -->

    <div class="page-content">

        <dec:body/>

        <!-- footer -->
        <%@ include file="/common/admin/footer.jsp" %>
        <!-- footer -->
    </div>
</div>

<!-- jQuery  -->
<script src="/template/admin/assets/js/jquery.min.js"></script>
<script src="/template/admin/assets/js/bootstrap.bundle.min.js"></script>
<script src="/template/admin/assets/js/metismenu.min.js"></script>
<script src="/template/admin/assets/js/waves.js"></script>
<script src="/template/admin/assets/js/feather.min.js"></script>
<script src="/template/admin/assets/js/simplebar.min.js"></script>
<script src="/template/admin/assets/js/moment.js"></script>
<script src="/template/admin/plugins/daterangepicker/daterangepicker.js"></script>

<%--<script src="/admin/plugins/leaflet/leaflet.js"></script>--%>
<%--<script src="/admin/plugins/lightpick/lightpick.js"></script>--%>
<%--<script src="/admin/assets/pages/jquery.profile.init.js"></script>--%>

<script src="/template/admin/plugins/apex-charts/apexcharts.min.js"></script>
<script src="/template/admin/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
<script src="/template/admin/plugins/jvectormap/jquery-jvectormap-us-aea-en.js"></script>
<script src="/template/admin/assets/pages/jquery.analytics_dashboard.init.js"></script>

<%--<script src="/admin/assets/pages/jquery.leaflet-map.init.js"></script>--%>

<script src="/template/admin/plugins/dropify/js/dropify.min.js"></script>
<script src="/template/admin/assets/pages/jquery.form-upload.init.js"></script>

<!-- App js -->
<script src="/template/admin/assets/js/app.js"></script>

<!-- Required datatable js -->
<script src="/template/admin/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/template/admin/plugins/datatables/dataTables.bootstrap5.min.js"></script>

<!-- Buttons examples -->
<script src="/template/admin/plugins/datatables/dataTables.buttons.min.js"></script>
<script src="/template/admin/plugins/datatables/buttons.bootstrap5.min.js"></script>
<script src="/template/admin/plugins/datatables/jszip.min.js"></script>
<script src="/template/admin/plugins/datatables/pdfmake.min.js"></script>
<script src="/template/admin/plugins/datatables/vfs_fonts.js"></script>
<script src="/template/admin/plugins/datatables/buttons.html5.min.js"></script>
<script src="/template/admin/plugins/datatables/buttons.print.min.js"></script>
<script src="/template/admin/plugins/datatables/buttons.colVis.min.js"></script>

<!-- Responsive examples -->
<script src="/template/admin/plugins/datatables/dataTables.responsive.min.js"></script>
<script src="/template/admin/plugins/datatables/responsive.bootstrap4.min.js"></script>
<script src="/template/admin/assets/pages/jquery.datatable.init.js"></script>


</body>
</html>