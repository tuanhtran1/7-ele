<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 14/08/2022
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
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
                    <li class="breadcrumb-item active">Shop</li>
                </ol>
            </nav>
        </div>
    </div>
</section>

<main class="inner-page-sec-padding-bottom">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 order-lg-2">
                <div class="shop-toolbar with-sidebar mb--30">
                    <div class="row align-items-center">
                        <div class="col-lg-2 col-md-2 col-sm-6">
                            <!-- Product View Mode -->
                            <div class="product-view-mode">
                                <a href="#" class="sorting-btn active" data-target="grid"><i class="fas fa-th"></i></a>
                                <a href="#" class="sorting-btn" data-target="grid-four">
											<span class="grid-four-icon">
												<i class="fas fa-grip-vertical"></i><i class="fas fa-grip-vertical"></i>
											</span>
                                </a>
                                <a href="#" class="sorting-btn" data-target="list "><i class="fas fa-list"></i></a>
                            </div>
                        </div>
                        <div class="col-xl-4 col-md-4 col-sm-6  mt--10 mt-sm--0">
									<span class="toolbar-status">
										Showing 1 to 9 of 14 (2 Pages)
									</span>
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-6  mt--10 mt-md--0">
                            <div class="sorting-selection">
                                <span>Show:</span>
                                <select class="form-control nice-select sort-select" style="display: none;">
                                    <option value="" selected="selected">3</option>
                                    <option value="">9</option>
                                    <option value="">5</option>
                                    <option value="">10</option>
                                    <option value="">12</option>
                                </select>
                                <div class="nice-select form-control sort-select" tabindex="0"><span
                                        class="current">3</span>
                                    <ul class="list">
                                        <li data-value="" class="option selected">3</li>
                                        <li data-value="" class="option">9</li>
                                        <li data-value="" class="option">5</li>
                                        <li data-value="" class="option">10</li>
                                        <li data-value="" class="option">12</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 mt--10 mt-md--0 ">
                            <div class="sorting-selection">
                                <span>Sort By:</span>
                                <select class="form-control nice-select sort-select mr-0" style="display: none;">
                                    <option value="" selected="selected">Default Sorting</option>
                                    <option value="">Sort
                                        By:Name (A - Z)
                                    </option>
                                    <option value="">Sort
                                        By:Name (Z - A)
                                    </option>
                                    <option value="">Sort
                                        By:Price (Low &gt; High)
                                    </option>
                                    <option value="">Sort
                                        By:Price (High &gt; Low)
                                    </option>
                                    <option value="">Sort
                                        By:Rating (Highest)
                                    </option>
                                    <option value="">Sort
                                        By:Rating (Lowest)
                                    </option>
                                    <option value="">Sort
                                        By:Model (A - Z)
                                    </option>
                                    <option value="">Sort
                                        By:Model (Z - A)
                                    </option>
                                </select>
                                <div class="nice-select form-control sort-select mr-0" tabindex="0"><span
                                        class="current">Default Sorting</span>
                                    <ul class="list">
                                        <li data-value="" class="option selected focus">Default Sorting</li>
                                        <li data-value="" class="option">Sort
                                            By:Name (A - Z)
                                        </li>
                                        <li data-value="" class="option">Sort
                                            By:Name (Z - A)
                                        </li>
                                        <li data-value="" class="option">Sort
                                            By:Price (Low &gt; High)
                                        </li>
                                        <li data-value="" class="option">Sort
                                            By:Price (High &gt; Low)
                                        </li>
                                        <li data-value="" class="option">Sort
                                            By:Rating (Highest)
                                        </li>
                                        <li data-value="" class="option">Sort
                                            By:Rating (Lowest)
                                        </li>
                                        <li data-value="" class="option">Sort
                                            By:Model (A - Z)
                                        </li>
                                        <li data-value="" class="option">Sort
                                            By:Model (Z - A)
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="shop-toolbar d-none">
                    <div class="row align-items-center">
                        <div class="col-lg-2 col-md-2 col-sm-6">
                            <!-- Product View Mode -->
                            <div class="product-view-mode">
                                <a href="#" class="sorting-btn" data-target="grid"><i class="fas fa-th"></i></a>
                                <a href="#" class="sorting-btn" data-target="grid-four">
											<span class="grid-four-icon">
												<i class="fas fa-grip-vertical"></i><i class="fas fa-grip-vertical"></i>
											</span>
                                </a>
                                <a href="#" class="sorting-btn" data-target="list "><i class="fas fa-list"></i></a>
                            </div>
                        </div>
                        <div class="col-xl-5 col-md-4 col-sm-6  mt--10 mt-sm--0">
									<span class="toolbar-status">
										Showing 1 to 9 of 14 (2 Pages)
									</span>
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-6  mt--10 mt-md--0">
                            <div class="sorting-selection">
                                <span>Show:</span>
                                <select class="form-control nice-select sort-select" style="display: none;">
                                    <option value="" selected="selected">3</option>
                                    <option value="">9</option>
                                    <option value="">5</option>
                                    <option value="">10</option>
                                    <option value="">12</option>
                                </select>
                                <div class="nice-select form-control sort-select" tabindex="0"><span
                                        class="current">3</span>
                                    <ul class="list">
                                        <li data-value="" class="option selected">3</li>
                                        <li data-value="" class="option">9</li>
                                        <li data-value="" class="option">5</li>
                                        <li data-value="" class="option">10</li>
                                        <li data-value="" class="option">12</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 mt--10 mt-md--0 ">
                            <div class="sorting-selection">
                                <span>Sort By:</span>
                                <select class="form-control nice-select sort-select mr-0" style="display: none;">
                                    <option value="" selected="selected">Default Sorting</option>
                                    <option value="">Sort
                                        By:Name (A - Z)
                                    </option>
                                    <option value="">Sort
                                        By:Name (Z - A)
                                    </option>
                                    <option value="">Sort
                                        By:Price (Low &gt; High)
                                    </option>
                                    <option value="">Sort
                                        By:Price (High &gt; Low)
                                    </option>
                                    <option value="">Sort
                                        By:Rating (Highest)
                                    </option>
                                    <option value="">Sort
                                        By:Rating (Lowest)
                                    </option>
                                    <option value="">Sort
                                        By:Model (A - Z)
                                    </option>
                                    <option value="">Sort
                                        By:Model (Z - A)
                                    </option>
                                </select>
                                <div class="nice-select form-control sort-select mr-0" tabindex="0"><span
                                        class="current">Default Sorting</span>
                                    <ul class="list">
                                        <li data-value="" class="option selected">Default Sorting</li>
                                        <li data-value="" class="option">Sort
                                            By:Name (A - Z)
                                        </li>
                                        <li data-value="" class="option">Sort
                                            By:Name (Z - A)
                                        </li>
                                        <li data-value="" class="option">Sort
                                            By:Price (Low &gt; High)
                                        </li>
                                        <li data-value="" class="option">Sort
                                            By:Price (High &gt; Low)
                                        </li>
                                        <li data-value="" class="option">Sort
                                            By:Rating (Highest)
                                        </li>
                                        <li data-value="" class="option">Sort
                                            By:Rating (Lowest)
                                        </li>
                                        <li data-value="" class="option">Sort
                                            By:Model (A - Z)
                                        </li>
                                        <li data-value="" class="option">Sort
                                            By:Model (Z - A)
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="list-prod-api-page" class="shop-product-wrap with-pagination row space-db--30 shop-border grid">
<%--                    product--%>
                </div>
                <!-- Pagination Block -->
                <div class="row pt--30">
                    <div class="col-md-12">
                        <div class="pagination-block">
                            <ul id="pagination-demo" class="pagination-btns flex-center">
                                <li><a href="" class="single-btn prev-btn ">|<i class="zmdi zmdi-chevron-left"></i> </a>
                                </li>
                                <li class="active"><a href="" class="single-btn">1</a></li>
                                <li><a href="" class="single-btn">2</a></li>
                                <li><a href="" class="single-btn">3</a></li>
                                <li><a href="" class="single-btn next-btn"><i class="zmdi zmdi-chevron-right"></i>|</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3  mt--40 mt-lg--0">
                <div class="inner-page-sidebar">
                    <!-- Accordion -->
                    <div class="single-block">
                        <h3 class="sidebar-title">Categories</h3>
                        <ul class="sidebar-menu--shop">
                            <li><a type="button" onclick="clickCategory('ALL')">Tất cả</a></li>
                            <c:forEach var="item" items="${categories}" begin="0" end="7">
                                <li><a type="button" onclick="clickCategory('${item.code}')">${item.value}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <!-- Price -->
                    <div class="single-block">
                        <h3 class="sidebar-title">Fillter By Price</h3>
                        <div class="range-slider pt--30">
                            <div class="sb-range-slider ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content">
                                <div class="ui-slider-range ui-corner-all ui-widget-header"
                                     style="left: 10.6242%; width: 45.2855%;"></div>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"
                                      style="left: 10.6242%;"></span><span tabindex="0"
                                                                           class="ui-slider-handle ui-corner-all ui-state-default"
                                                                           style="left: 55.9097%;"></span></div>
                            <div class="slider-price">
                                <p>
                                    <input type="text" id="amount" readonly="">
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- Promotion Block -->
                    <div class="single-block">
                        <a href="" class="promo-image sidebar">
                            <img src="https://htmldemo.net/pustok/pustok/image/others/home-side-promo.jpg" alt="">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<!-- Modal -->
<div class="modal fade modal-quick-view" id="quickModal" tabindex="-1" role="dialog"
     aria-labelledby="quickModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <button type="button" class="close modal-close-btn ml-auto" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <div class="product-details-modal">
                <input type="hidden" id="productId">
                <div class="row">
                    <div class="col-lg-5">
                        <!-- Product Details Slider Big Image-->
                        <div class="product-details-slider sb-slick-slider arrow-type-two">
                            <div id="product-img-api" class="single-slide">
                                <%--api call here--%>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 mt--30 mt-lg--30">
                        <div class="product-details-info pl-lg--30 ">
                            <div id="product-title-api">
                                <%--api call here--%>
                            </div>
                            <ul id="category-api" class="list-unstyled">
                                <li>Tác giả: <a href="#" class="list-value font-weight-bold"> Chưa thêm loại</a></li>
                                <li>Thể loại: <a href="#" class="list-value font-weight-bold"> Chưa thêm loại</a></li>
                                <%--api call here--%>
                                <%--                                <li>Reward Points: <span class="list-value"> 200</span></li>&lt;%&ndash;api call here&ndash;%&gt;--%>
                                <%--                                <li>Tình trạng: <span class="list-value"> In Stock</span></li>&lt;%&ndash;api call here&ndash;%&gt;--%>
                            </ul>
                            <div id="product-price-api" class="price-block">

                            </div>
                            <div class="rating-widget">
                                <div class="rating-block">
                                    <span class="fas fa-star star_on"></span>
                                    <span class="fas fa-star star_on"></span>
                                    <span class="fas fa-star star_on"></span>
                                    <span class="fas fa-star star_on"></span>
                                    <span class="fas fa-star "></span>
                                </div>
                                <div class="review-widget">
                                    <a href="#">(1 Reviews)</a> <span>|</span>
                                    <a href="#">Write a review</a>
                                </div>
                            </div>
                            <article id="product-description-api" class="product-details-article">

                            </article>
                            <div class="add-to-cart-row">
                                <div class="count-input-block">
                                    <span class="widget-label">Số lượng</span>
                                    <input type="number" class="form-control text-center" value="1">
                                </div>
                                <div class="add-cart-btn">
                                    <a href="" class="btn btn-outlined--primary"><span
                                            class="plus-icon">+</span>Thêm vào giỏ</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div class="widget-social-share">
                    <span class="widget-label">Chia sẻ:</span>
                    <div class="modal-social-share">
                        <a href="#" class="single-icon"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="single-icon"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="single-icon"><i class="fab fa-youtube"></i></a>
                        <a href="#" class="single-icon"><i class="fab fa-google-plus-g"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">

    var params = {}; //default
    var keyword = localStorage.getItem("keyword")
    var categoryCode = localStorage.getItem("categoryCode")
    if(!((keyword == 'null') || (keyword == "") || (keyword == null))){
        params["keyword"] =  keyword
    }
    if(!((categoryCode == 'null') || (categoryCode == "") || (categoryCode==null))){
        params["categoryCode"] =  categoryCode
    }
    params["page"] = 1;
    params["size"] = 10; //default
    callApiPage(params)

    console.log(params)
    var totalPages;
    var currentPage = 1;

    //paging

    function callApiPage(params){
        var urlAPI = '/api/products-page?'
        Object.keys(params).forEach(function(key) {
            var value = params[key];
            urlAPI += key +'='+value +'&'
        });
        $.ajax({
            url: urlAPI,
            type: 'GET',
            dataType: "json",
            contentType: 'application/json',
            success: function (response) {
                var result =''
                totalPages = parseInt(response.totalPage)
                $.each(response.result, function (index, item) {
                    result += '<div class="col-lg-4 col-sm-6">' +
                        '<div class="product-card">' +
                        '<div class="product-grid-content">' +
                        '<div class="product-header">' +
                        '<a href="" class="author">Epple </a>' +
                        '<h3><a href="product-details.html">'+item.name+'</a></h3></div>'+
                        '<div class="product-card--body">' +
                        '<div class="card-image">' +
                        '<img src="/products/'+item.image+'" alt="">'+
                        '<div class="hover-contents">' +
                        '<a href="/customer/product-detail/'+item.id+'" class="hover-image">' +
                        '<img src="/products/'+item.image+'" alt=""> </a>'+
                        '<div class="hover-btns"><a type="button" onclick="addToCart('+item.id+', 1)" data-toggle="tooltip" class="single-btn">' +
                        '<i class="fas fa-shopping-basket"></i> </a>' +
                        '<a type="button" data-toggle="tooltip" onclick="showModal('+item.id+')"class="single-btn">'+
                        '<i class="fas fa-eye"></i> </a> </div> </div> </div> <div class="price-block"> ' +
                        '<span class="price">'+item.salePrice+'đ</span> <del class="price-old">'+item.price+'đ</del>'+
                        '<span class="price-discount">'+parseInt(item.discount)+'%</span> </div> </div> </div> </div></div>'
                })
                $('#list-prod-api-page').html(result)

                var itemPage = '<li><a onclick="clickPage(1)" class="single-btn prev-btn ">|<i class="zmdi zmdi-chevron-left"></i> </a></li>'
                for (let i = 1; i <= totalPages; i++) {
                    if(currentPage == i) {
                        itemPage += '<li class="active"><a onclick="clickPage('+i+')" class="single-btn">'+i+'</a></li>';
                    }else itemPage += '<li><a onclick="clickPage('+i+')" class="single-btn">'+i+'</a></li>';
                }
                itemPage += '<li><a onclick="clickPage(totalPages)" class="single-btn next-btn"><i class="zmdi zmdi-chevron-right"></i>|</a> </li>'
                $('#pagination-demo').html(itemPage)
                localStorage.setItem("keyword", null)
            },
            error: function (response) {
                console.log(response.errors);
            }
        });
    }

    function clickPage(index){
        currentPage = index
        params["page"] = currentPage;
        callApiPage(params)
    }

    function clickCategory(code){
        delete params['keyword']
        if(code == 'ALL') {
            delete params['categoryCode']
        }
        else params['categoryCode'] = code
        params["page"] = 1;
        params["size"] = 10; //default
        callApiPage(params)
    }

    function showModal(id) {
        $('#quickModal').modal()
        $.ajax({
            url: "/api/product?id=" + id,
            type: 'GET',
            dataType: "json",
            contentType: 'application/json',
            success: function (response) {
                var image = '<img src="/products/' + response.image + '" alt="">'
                var name = '<h3 id="product-title-api" class="product-title">' + response.name + '</h3>'
                $('#product-img-api').html(image)
                $('#product-title-api').html(name)
                $('#product-price-api').html(
                    '<span class="price-new">' + response.salePrice + '</span>' +
                    '<del class="price-old">' + response.price + '</del>')
                $('#product-description-api').html('<p>' + response.description + '</p>')
                $('#productId').val(id);
                $('#category-api').html('<li>Tác giả: <a href="#" class="list-value font-weight-bold">'+response.author+'</a></li>' +
                    '<li>Thể loại: <a href="#" class="list-value font-weight-bold">'+response.category.value+'</a></li>')
                $('#btnChoose').html('<a onclick="addToCart('+ response.id +',1)" type="button" class="btn btn-outlined--primary"><span class="plus-icon">+</span>Thêm vào giỏ</a>')
            },
            error: function (response) {
                console.log(response.errors);
            }
        });
    }

    function addToCart(productId, value) {
        <security:authorize access="isAuthenticated() == false">

        Swal.fire({
            title: 'Thông báo',
            text: "Bạn chưa đăng nhập để thêm giỏ hàng !",
            icon: 'error',
            showCancelButton: true,
            cancelButtonText: 'Để sau!',
            confirmButtonColor: '#61ab02',
            cancelButtonColor: '#ccc',
            confirmButtonText: 'Đăng nhập ngay!'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = "/customer/login"
            }
        })
        </security:authorize>
        <security:authorize access="isAuthenticated()">
        $.ajax({
            type: 'POST',
            url: '/api/cart?productId=' + productId + '&userId=' + <security:authentication property="principal.id"/> +'&quantity=' + value,
            dataType: "json",
            contentType: "application/json",
            success: function (response) {
                Swal.fire({
                    icon: 'success',
                    title: 'Đã thêm vào giỏ hàng',
                    showConfirmButton: false,
                    timer: 1500
                })
                callAPIcart(<security:authentication property="principal.id"/>)
            },
            error: function (response) {
                Swal.fire({
                    icon: 'error',
                    title: 'Giỏ hàng của bạn đã có sản phẩm này',
                    showConfirmButton: false,
                    timer: 1500
                })
            }
        });
        </security:authorize>

    }
    <security:authorize access="isAuthenticated()">
    // api cart
    callAPIcart(<security:authentication property="principal.id"/>)

    function deleteCart(id) {
        Swal.fire({
            title: 'Thông báo',
            text: "Bạn có muốn xoá sản phẩm này không ?",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#61ab02',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Đồng ý!',
            cancelButtonText: 'Huỷ'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: '/api/cart/' + id,
                    type: 'DELETE',
                    contentType: 'application/json',
                    success: function (result) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Xoá thành công sản phẩm khỏi giỏ hàng',
                            showConfirmButton: false,
                            timer: 1500
                        })
                        callAPIcart(<security:authentication property="principal.id"/>)
                    },
                    error: function (error) {
                        Swal.fire({
                            icon: 'error',
                            title: 'Xoá bị lỗi! Vui lòng kiểm tra lại',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    }
                });
            }
        })
    }

    function callAPIcart(id) {
        $.ajax({
            url: "/api/carts?userId=" + id,
            type: 'GET',
            dataType: "json",
            contentType: 'application/json',
            success: function (response) {
                var totalPrice = 0, mount = response.length
                var result = '';
                $.each(response, function (index, item) {
                    totalPrice += item.totalMoney
                    result += '<div class="cart-product">'
                    result += '<a href="product-details.html" class="image">'
                    result += '<img src="/products/' + item.product.image + '" alt="">'
                    result += '</a>'

                    result += '<div class="content">'
                    result += '<h3 class="title">'
                    result += '<a href="product-details.html">' + item.product.name + '</a>'
                    result += '</h3>'
                    result += '<div class="price">Total: ' + item.quantity + ' x ' + item.product.salePrice + 'đ</div>'
                    result += '<button class="cross-btn" onclick="deleteCart(' + item.id + ')"><i class="fas fa-times"></i></button>'
                    result += '</div>'

                    result += ' </div>'

                })
                $('#carts-detail').html(result)
                $('#cart-info').html('<span class="text-number">' + response.length + '</span>' +
                    '<span class="text-item">Giỏ đồ</span>' +
                    '<span class="price">' + totalPrice + 'đ<i class="fas fa-chevron-down"></i></span>')

            },
            error: function (response) {
                $('#cart-dropdown-block #carts-detail').html('<span style="display: block; text-align: center; margin-bottom: 20px" class="price">Giỏ đồ đang trống</span>')
                $('#cart-info').html('<span class="text-number">' + 0 + '</span>' +
                    '<span class="text-item">Giỏ đồ</span>' +
                    '<span class="price">' + 0 + 'đ<i class="fas fa-chevron-down"></i></span>')

            }
        });
    }

    </security:authorize>
</script>
</body>
</html>
