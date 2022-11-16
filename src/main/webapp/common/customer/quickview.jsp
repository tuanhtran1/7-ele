<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 7/2/22
  Time: 11:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<section class="hero-area hero-slider-2">
    <div class="container">
        <div class="row align-items-lg-center">
            <div class="col-lg-8">
                <div class="sb-slick-slider" data-slick-setting='{
                                                                "autoplay": true,
                                                                "autoplaySpeed": 8000,
                                                                "slidesToShow": 1,
                                                                "dots":true
                                                                }'>
                    <div class="single-slide bg-image bg-position-left bg-position-lg-center"
                         data-bg="https://htmldemo.net/pustok/pustok/image/bg-images/home-2-slider-1.jpg">
                        <div class="home-content text-left text-md-center pl--30 pl-md--0">
                            <div class="row">
                                <div class="col-lg-7 col-xl-5 col-md-6 col-sm-6">
                                    <span class="title-small">Beautifully Designed</span>
                                    <h2>INSTA</h2>
                                    <p>Cover up front of book and
                                        <br>leave summary</p>
                                    <a href="/customer/home" class="btn btn-outlined--primary">
                                        Shop Now
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide bg-image" data-bg="https://htmldemo.net/pustok/pustok/image/bg-images/home-2-slider-2.jpg">
                        <div class="home-content pl--30">
                            <div class="row">
                                <div class="col-lg-7">
                                    <span class="title-mid">Book Mockup</span>
                                    <h2 class="h2-v2">Hardcover.</h2>
                                    <p>Cover up front of book and
                                        <br>leave summary</p>
                                    <a href="shop-grid.html" class="btn btn-outlined--primary">
                                        Shop Now
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mt--30 mt-lg--0">
                <div class="sb-slick-slider hero-products-group-slider product-border-reset" data-slick-setting='{
                                            "autoplay": true,
                                            "autoplaySpeed": 8000,
                                            "slidesToShow": 1,
                                            "rows":2
                                        }' data-slick-responsive='[
                                            {"breakpoint":992, "settings": {"slidesToShow": 2,"rows":2} },
                                            {"breakpoint":768, "settings": {"slidesToShow": 1} },
                                         {"breakpoint":490, "settings": {"slidesToShow": 1} }
                                    ]'>
                    <c:forEach items="${productsOfDiscount}" var="p" >
                        <div class="single-slide">
                            <div class="product-card card-style-list">
                                <div class="card-image">
                                    <img src="/products/${p.image}" alt="">
                                </div>
                                <div class="product-card--body">
                                    <div class="product-header">
                                        <a href="" class="author">
                                            ${p.author}
                                        </a>
                                        <h3><a href="/customer/product-detail/${p.id}">${p.name}</a></h3>
                                    </div>
                                    <div class="price-block">
                                        <span class="price">${p.price}</span>
                                        <del class="price-old">${p.salePrice}</del>
                                        <span class="price-discount">${p.discount.intValue()}%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</section>