<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 22/08/2022
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <li class="breadcrumb-item active">Product Details</li>
                </ol>
            </nav>
        </div>
    </div>
</section>
<main class="inner-page-sec-padding-bottom">
    <div class="container">
        <div class="row  mb--60">
            <div class="col-lg-5 mb--30">
                <!-- Product Details Slider Big Image-->
                <div class="product-details-slider sb-slick-slider arrow-type-two" >
                    <div class="single-slide">
                        <img src="/products/${productDetail.image}" alt="">
                    </div>
                </div>
            </div>
            <div class="col-lg-7">
                <div class="product-details-info pl-lg--30 ">
                    <p class="tag-block">Tác giả: <a href="#">${productDetail.author}</a>
                    <h3 class="product-title">${productDetail.name}</h3>
                    <ul class="list-unstyled">
                        <li>Thể loại: <a href="#" class="list-value font-weight-bold"> ${productDetail.category.value}</a></li>
                        <li>Tình trạng:  <c:choose>
                            <c:when test="${productDetail.quantity==0}">
                                <span class="list-value"> Hết hàng</span>
                            </c:when>
                            <c:otherwise>
                                <span class="list-value"> Còn hàng</span>
                            </c:otherwise>
                        </c:choose></li>
                    </ul>
                    <div class="price-block">
                        <span class="price-new">${productDetail.salePrice}</span>
                        <del class="price-old">${productDetail.price}</del>
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
                            <a href="">(1 Reviews)</a> <span>|</span>
                            <a href="">Write a review</a>
                        </div>
                    </div>
                    <article class="product-details-article">
                        <h4 class="sr-only">Product Summery</h4>
                        <p>Long printed dress with thin adjustable straps. V-neckline and wiring under the Dust
                            with ruffles at the bottom of the
                            dress.</p>
                    </article>
                    <div class="add-to-cart-row">
                        <div class="count-input-block">
                            <span class="widget-label">Số lượng</span>
                            <input id="quantityChoose" type="number" class="form-control text-center" value="1">
                        </div>
                        <div class="add-cart-btn">
                            <a onclick="addToCart(${productDetail.id})" type="button" class="btn btn-outlined--primary"><span class="plus-icon">+</span>Thêm giỏ hàng</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="sb-custom-tab review-tab section-padding">
            <ul class="nav nav-tabs nav-style-2" id="myTab2" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="tab1" data-toggle="tab" href="#tab-1" role="tab"
                       aria-controls="tab-1" aria-selected="true">
                        MÔ TẢ
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="tab2" data-toggle="tab" href="#tab-2" role="tab"
                       aria-controls="tab-2" aria-selected="true">
                        REVIEWS (1)
                    </a>
                </li>
            </ul>
            <div class="tab-content space-db--20" id="myTabContent">
                <div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="tab1">
                    <article class="review-article">
                        <h1 class="sr-only">Tab Article</h1>
                        <p>${productDetail.description}</p>
                    </article>
                </div>
                <div class="tab-pane fade" id="tab-2" role="tabpanel" aria-labelledby="tab2">
                    <div class="review-wrapper">
                        <h2 class="title-lg mb--20">1 REVIEW FOR AUCTOR GRAVIDA ENIM</h2>
                        <div class="review-comment mb--20">
                            <div class="avatar">
                                <img src="image/icon/author-logo.png" alt="">
                            </div>
                            <div class="text">
                                <div class="rating-block mb--15">
                                    <span class="ion-android-star-outline star_on"></span>
                                    <span class="ion-android-star-outline star_on"></span>
                                    <span class="ion-android-star-outline star_on"></span>
                                    <span class="ion-android-star-outline"></span>
                                    <span class="ion-android-star-outline"></span>
                                </div>
                                <h6 class="author">ADMIN – <span class="font-weight-400">March 23, 2015</span>
                                </h6>
                                <p>Lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio
                                    quis mi.</p>
                            </div>
                        </div>
                        <h2 class="title-lg mb--20 pt--15">ADD A REVIEW</h2>
                        <div class="rating-row pt-2">
                            <p class="d-block">Your Rating</p>
                            <span class="rating-widget-block">
                                        <input type="radio" name="star" id="star1">
                                        <label for="star1"></label>
                                        <input type="radio" name="star" id="star2">
                                        <label for="star2"></label>
                                        <input type="radio" name="star" id="star3">
                                        <label for="star3"></label>
                                        <input type="radio" name="star" id="star4">
                                        <label for="star4"></label>
                                        <input type="radio" name="star" id="star5">
                                        <label for="star5"></label>
                                    </span>
                            <form action="./" class="mt--15 site-form ">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="message">Comment</label>
                                            <textarea name="message" id="message" cols="30" rows="10"
                                                      class="form-control"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <label for="name">Name *</label>
                                            <input type="text" id="name" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <label for="email">Email *</label>
                                            <input type="text" id="email" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <label for="website">Website</label>
                                            <input type="text" id="website" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="submit-btn">
                                            <a href="#" class="btn btn-black">Post Comment</a>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--=================================
RELATED PRODUCTS BOOKS
===================================== -->
</main>

<script type="text/javascript">

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
                    result += '<a href="/customer/product-detail/'+ item.product.id+'" class="image">'
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
            },
            error: function (response) {
                console.log(response.errors);
            }
        });
    }

    function addToCart(productId){
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
        var quantityProduct = ${productDetail.quantity};
        if(quantityProduct == 0){
            Swal.fire({
                icon: 'error',
                title: 'Sản phẩm đã hết vui lòng thử lại sau !',
                showConfirmButton: false,
                timer: 1500
            })
        }
        else {
            $.ajax({
                type: 'POST',
                url: '/api/cart?productId=' + productId + '&userId=' + <security:authentication property="principal.id"/> +'&quantity=' + $('#quantityChoose').val(),
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
        }
        </security:authorize>
    }
</script>
</body>
</html>
