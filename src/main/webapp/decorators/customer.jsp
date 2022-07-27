<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 7/2/22
  Time: 10:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Book Store</title>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Use Minified Plugins Version For Fast Page Load -->
    <link rel="stylesheet" type="text/css" media="screen" href="/template/customer/css/plugins.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="/template/customer/css/main.css"/>
    <link rel="shortcut icon" type="image/x-icon" href="/template/customer/image/favicon.ico">

</head>
<body>
<div class="site-wrapper" id="top">
    <%--    Header--%>
    <%@include file="/common/customer/header.jsp" %>

    <c:if test="${disable != 'on'}">
        <%@include file="/common/customer/quickview.jsp" %>
        <%@include file="/common/customer/supporthelp.jsp" %>
    </c:if>
    <dec:body/>

</div>


<%--footer--%>
<%@include file="/common/customer/footer.jsp" %>

<!-- Use Minified Plugins Version For Fast Page Load -->
<script src="/template/customer/js/plugins.js"></script>
<script src="/template/customer/js/ajax-mail.js"></script>
<script src="/template/customer/js/custom.js"></script>
</body>
</html>
