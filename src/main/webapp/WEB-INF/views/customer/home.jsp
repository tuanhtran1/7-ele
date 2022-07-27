<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 7/2/22
  Time: 11:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--=================================
Home Slider Tab
===================================== -->
<section class="section-padding">
    <h2 class="sr-only">Home Tab Slider Section</h2>
    <div class="container">
        <div class="sb-custom-tab">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link" id="shop-tab" data-toggle="tab" href="#shop" role="tab"
                       aria-controls="shop" aria-selected="true">
                        Featured Products
                    </a>
                    <span class="arrow-icon"></span>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" id="men-tab" data-toggle="tab" href="#men" role="tab"
                       aria-controls="men" aria-selected="true">
                        New Arrivals
                    </a>
                    <span class="arrow-icon"></span>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="woman-tab" data-toggle="tab" href="#woman" role="tab"
                       aria-controls="woman" aria-selected="false">
                        Most view products
                    </a>
                    <span class="arrow-icon"></span>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane" id="shop" role="tabpanel" aria-labelledby="shop-tab">
                    <div class="product-slider multiple-row  slider-border-multiple-row  sb-slick-slider"
                         data-slick-setting='{
                            "autoplay": true,
                            "autoplaySpeed": 8000,
                            "slidesToShow": 5,
                            "rows":2,
                            "dots":true
                        }' data-slick-responsive='[
                            {"breakpoint":1200, "settings": {"slidesToShow": 3} },
                            {"breakpoint":768, "settings": {"slidesToShow": 2} },
                            {"breakpoint":480, "settings": {"slidesToShow": 1} },
                            {"breakpoint":320, "settings": {"slidesToShow": 1} }
                        ]'>
                        <div class="single-slide">
                            <div class="product-card">
                                <div class="product-header">
                                    <a href="" class="author">
                                        jpple
                                    </a>
                                    <h3><a href="product-details.html">Rpple iPad with Retina Display
                                        MD510LL/A</a></h3>
                                </div>
                                <div class="product-card--body">
                                    <div class="card-image">
                                        <img src="/template/customer/image/products/product-1.jpg" alt="">
                                        <div class="hover-contents">
                                            <a href="product-details.html" class="hover-image">
                                                <img src="/template/customer/image/products/product-1.jpg" alt="">
                                            </a>
                                            <div class="hover-btns">
                                                <a href="cart.html" class="single-btn">
                                                    <i class="fas fa-shopping-basket"></i>
                                                </a>
                                                <a href="wishlist.html" class="single-btn">
                                                    <i class="fas fa-heart"></i>
                                                </a>
                                                <a href="compare.html" class="single-btn">
                                                    <i class="fas fa-random"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#quickModal"
                                                   class="single-btn">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="tab-pane active" id="men" role="tabpanel" aria-labelledby="men-tab">
                    <div class="product-slider multiple-row  slider-border-multiple-row  sb-slick-slider"
                         data-slick-setting='{
                                        "autoplay": true,
                                        "autoplaySpeed": 8000,
                                        "slidesToShow": 5,
                                        "rows":2,
                                        "dots":true
                                    }' data-slick-responsive='[
                                        {"breakpoint":1200, "settings": {"slidesToShow": 3} },
                                        {"breakpoint":768, "settings": {"slidesToShow": 2} },
                                        {"breakpoint":480, "settings": {"slidesToShow": 1} },
                                        {"breakpoint":320, "settings": {"slidesToShow": 1} }
                                    ]'>
                        <div class="single-slide">
                            <div class="product-card">
                                <div class="product-header">
                                    <a href="" class="author">
                                        jpple
                                    </a>
                                    <h3><a href="product-details.html">Bpple iPad with Retina Display
                                        MD510LL/A</a></h3>
                                </div>
                                <div class="product-card--body">
                                    <div class="card-image">
                                        <img src="/template/customer/image/products/product-3.jpg" alt="">
                                        <div class="hover-contents">
                                            <a href="product-details.html" class="hover-image">
                                                <img src="/template/customer/image/products/product-1.jpg" alt="">
                                            </a>
                                            <div class="hover-btns">
                                                <a href="cart.html" class="single-btn">
                                                    <i class="fas fa-shopping-basket"></i>
                                                </a>
                                                <a href="wishlist.html" class="single-btn">
                                                    <i class="fas fa-heart"></i>
                                                </a>
                                                <a href="compare.html" class="single-btn">
                                                    <i class="fas fa-random"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#quickModal"
                                                   class="single-btn">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-slide">
                            <div class="product-card">
                                <div class="product-header">
                                    <a href="" class="author">
                                        Bpple
                                    </a>
                                    <h3><a href="product-details.html">Koss KPH7 Lightweight Portable
                                        Headphone</a></h3>
                                </div>
                                <div class="product-card--body">
                                    <div class="card-image">
                                        <img src="/template/customer/image/products/product-2.jpg" alt="">
                                        <div class="hover-contents">
                                            <a href="product-details.html" class="hover-image">
                                                <img src="/template/customer/image/products/product-3.jpg" alt="">
                                            </a>
                                            <div class="hover-btns">
                                                <a href="cart.html" class="single-btn">
                                                    <i class="fas fa-shopping-basket"></i>
                                                </a>
                                                <a href="wishlist.html" class="single-btn">
                                                    <i class="fas fa-heart"></i>
                                                </a>
                                                <a href="compare.html" class="single-btn">
                                                    <i class="fas fa-random"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#quickModal"
                                                   class="single-btn">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-slide">
                            <div class="product-card">
                                <div class="product-header">
                                    <a href="" class="author">
                                        Cpple
                                    </a>
                                    <h3><a href="product-details.html">Beats EP Wired On-Ear
                                        digital Headphone-Black

                                    </a></h3>
                                </div>
                                <div class="product-card--body">
                                    <div class="card-image">
                                        <img src="/template/customer/image/products/product-3.jpg" alt="">
                                        <div class="hover-contents">
                                            <a href="product-details.html" class="hover-image">
                                                <img src="/template/customer/image/products/product-2.jpg" alt="">
                                            </a>
                                            <div class="hover-btns">
                                                <a href="cart.html" class="single-btn">
                                                    <i class="fas fa-shopping-basket"></i>
                                                </a>
                                                <a href="wishlist.html" class="single-btn">
                                                    <i class="fas fa-heart"></i>
                                                </a>
                                                <a href="compare.html" class="single-btn">
                                                    <i class="fas fa-random"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#quickModal"
                                                   class="single-btn">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-slide">
                            <div class="product-card">
                                <div class="product-header">
                                    <a href="" class="author">
                                        Dpple
                                    </a>
                                    <h3><a href="product-details.html">Beats Solo2 Solo 2 Wired On-Ear
                                        Headphone</a></h3>
                                </div>
                                <div class="product-card--body">
                                    <div class="card-image">
                                        <img src="/template/customer/image/products/product-4.jpg" alt="">
                                        <div class="hover-contents">
                                            <a href="product-details.html" class="hover-image">
                                                <img src="/template/customer/image/products/product-5.jpg" alt="">
                                            </a>
                                            <div class="hover-btns">
                                                <a href="cart.html" class="single-btn">
                                                    <i class="fas fa-shopping-basket"></i>
                                                </a>
                                                <a href="wishlist.html" class="single-btn">
                                                    <i class="fas fa-heart"></i>
                                                </a>
                                                <a href="compare.html" class="single-btn">
                                                    <i class="fas fa-random"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#quickModal"
                                                   class="single-btn">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-slide">
                            <div class="product-card">
                                <div class="product-header">
                                    <a href="" class="author">
                                        Dpple
                                    </a>
                                    <h3><a href="product-details.html">Beats Solo2 Solo 2 Wired On-Ear
                                        Headphone</a></h3>
                                </div>
                                <div class="product-card--body">
                                    <div class="card-image">
                                        <img src="/template/customer/image/products/product-4.jpg" alt="">
                                        <div class="hover-contents">
                                            <a href="product-details.html" class="hover-image">
                                                <img src="/template/customer/image/products/product-5.jpg" alt="">
                                            </a>
                                            <div class="hover-btns">
                                                <a href="cart.html" class="single-btn">
                                                    <i class="fas fa-shopping-basket"></i>
                                                </a>
                                                <a href="wishlist.html" class="single-btn">
                                                    <i class="fas fa-heart"></i>
                                                </a>
                                                <a href="compare.html" class="single-btn">
                                                    <i class="fas fa-random"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#quickModal"
                                                   class="single-btn">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-slide">
                            <div class="product-card">
                                <div class="product-header">
                                    <a href="" class="author">
                                        Dpple
                                    </a>
                                    <h3><a href="product-details.html">Beats Solo2 Solo 2 Wired On-Ear
                                        Headphone</a></h3>
                                </div>
                                <div class="product-card--body">
                                    <div class="card-image">
                                        <img src="/template/customer/image/products/product-4.jpg" alt="">
                                        <div class="hover-contents">
                                            <a href="product-details.html" class="hover-image">
                                                <img src="/template/customer/image/products/product-5.jpg" alt="">
                                            </a>
                                            <div class="hover-btns">
                                                <a href="cart.html" class="single-btn">
                                                    <i class="fas fa-shopping-basket"></i>
                                                </a>
                                                <a href="wishlist.html" class="single-btn">
                                                    <i class="fas fa-heart"></i>
                                                </a>
                                                <a href="compare.html" class="single-btn">
                                                    <i class="fas fa-random"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#quickModal"
                                                   class="single-btn">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-slide">
                            <div class="product-card">
                                <div class="product-header">
                                    <a href="" class="author">
                                        Dpple
                                    </a>
                                    <h3><a href="product-details.html">Beats Solo2 Solo 2 Wired On-Ear
                                        Headphone</a></h3>
                                </div>
                                <div class="product-card--body">
                                    <div class="card-image">
                                        <img src="/template/customer/image/products/product-4.jpg" alt="">
                                        <div class="hover-contents">
                                            <a href="product-details.html" class="hover-image">
                                                <img src="/template/customer/image/products/product-5.jpg" alt="">
                                            </a>
                                            <div class="hover-btns">
                                                <a href="cart.html" class="single-btn">
                                                    <i class="fas fa-shopping-basket"></i>
                                                </a>
                                                <a href="wishlist.html" class="single-btn">
                                                    <i class="fas fa-heart"></i>
                                                </a>
                                                <a href="compare.html" class="single-btn">
                                                    <i class="fas fa-random"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#quickModal"
                                                   class="single-btn">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-slide">
                            <div class="product-card">
                                <div class="product-header">
                                    <a href="" class="author">
                                        Dpple
                                    </a>
                                    <h3><a href="product-details.html">Beats Solo2 Solo 2 Wired On-Ear
                                        Headphone</a></h3>
                                </div>
                                <div class="product-card--body">
                                    <div class="card-image">
                                        <img src="/template/customer/image/products/product-4.jpg" alt="">
                                        <div class="hover-contents">
                                            <a href="product-details.html" class="hover-image">
                                                <img src="/template/customer/image/products/product-5.jpg" alt="">
                                            </a>
                                            <div class="hover-btns">
                                                <a href="cart.html" class="single-btn">
                                                    <i class="fas fa-shopping-basket"></i>
                                                </a>
                                                <a href="wishlist.html" class="single-btn">
                                                    <i class="fas fa-heart"></i>
                                                </a>
                                                <a href="compare.html" class="single-btn">
                                                    <i class="fas fa-random"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#quickModal"
                                                   class="single-btn">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-slide">
                            <div class="product-card">
                                <div class="product-header">
                                    <a href="" class="author">
                                        Dpple
                                    </a>
                                    <h3><a href="product-details.html">Beats Solo2 Solo 2 Wired On-Ear
                                        Headphone</a></h3>
                                </div>
                                <div class="product-card--body">
                                    <div class="card-image">
                                        <img src="/template/customer/image/products/product-4.jpg" alt="">
                                        <div class="hover-contents">
                                            <a href="product-details.html" class="hover-image">
                                                <img src="/template/customer/image/products/product-5.jpg" alt="">
                                            </a>
                                            <div class="hover-btns">
                                                <a href="cart.html" class="single-btn">
                                                    <i class="fas fa-shopping-basket"></i>
                                                </a>
                                                <a href="wishlist.html" class="single-btn">
                                                    <i class="fas fa-heart"></i>
                                                </a>
                                                <a href="compare.html" class="single-btn">
                                                    <i class="fas fa-random"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#quickModal"
                                                   class="single-btn">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-slide">
                            <div class="product-card">
                                <div class="product-header">
                                    <a href="" class="author">
                                        Dpple
                                    </a>
                                    <h3><a href="product-details.html">Beats Solo2 Solo 2 Wired On-Ear
                                        Headphone</a></h3>
                                </div>
                                <div class="product-card--body">
                                    <div class="card-image">
                                        <img src="/template/customer/image/products/product-4.jpg" alt="">
                                        <div class="hover-contents">
                                            <a href="product-details.html" class="hover-image">
                                                <img src="/template/customer/image/products/product-5.jpg" alt="">
                                            </a>
                                            <div class="hover-btns">
                                                <a href="cart.html" class="single-btn">
                                                    <i class="fas fa-shopping-basket"></i>
                                                </a>
                                                <a href="wishlist.html" class="single-btn">
                                                    <i class="fas fa-heart"></i>
                                                </a>
                                                <a href="compare.html" class="single-btn">
                                                    <i class="fas fa-random"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#quickModal"
                                                   class="single-btn">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-slide">
                            <div class="product-card">
                                <div class="product-header">
                                    <a href="" class="author">
                                        Dpple
                                    </a>
                                    <h3><a href="product-details.html">Beats Solo2 Solo 2 Wired On-Ear
                                        Headphone</a></h3>
                                </div>
                                <div class="product-card--body">
                                    <div class="card-image">
                                        <img src="/template/customer/image/products/product-4.jpg" alt="">
                                        <div class="hover-contents">
                                            <a href="product-details.html" class="hover-image">
                                                <img src="/template/customer/image/products/product-5.jpg" alt="">
                                            </a>
                                            <div class="hover-btns">
                                                <a href="cart.html" class="single-btn">
                                                    <i class="fas fa-shopping-basket"></i>
                                                </a>
                                                <a href="wishlist.html" class="single-btn">
                                                    <i class="fas fa-heart"></i>
                                                </a>
                                                <a href="compare.html" class="single-btn">
                                                    <i class="fas fa-random"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#quickModal"
                                                   class="single-btn">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-slide">
                            <div class="product-card">
                                <div class="product-header">
                                    <a href="" class="author">
                                        Dpple
                                    </a>
                                    <h3><a href="product-details.html">Beats Solo2 Solo 2 Wired On-Ear
                                        Headphone</a></h3>
                                </div>
                                <div class="product-card--body">
                                    <div class="card-image">
                                        <img src="/template/customer/image/products/product-4.jpg" alt="">
                                        <div class="hover-contents">
                                            <a href="product-details.html" class="hover-image">
                                                <img src="/template/customer/image/products/product-5.jpg" alt="">
                                            </a>
                                            <div class="hover-btns">
                                                <a href="cart.html" class="single-btn">
                                                    <i class="fas fa-shopping-basket"></i>
                                                </a>
                                                <a href="wishlist.html" class="single-btn">
                                                    <i class="fas fa-heart"></i>
                                                </a>
                                                <a href="compare.html" class="single-btn">
                                                    <i class="fas fa-random"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#quickModal"
                                                   class="single-btn">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-slide">
                            <div class="product-card">
                                <div class="product-header">
                                    <a href="" class="author">
                                        Dpple
                                    </a>
                                    <h3><a href="product-details.html">Beats Solo2 Solo 2 Wired On-Ear
                                        Headphone</a></h3>
                                </div>
                                <div class="product-card--body">
                                    <div class="card-image">
                                        <img src="/template/customer/image/products/product-4.jpg" alt="">
                                        <div class="hover-contents">
                                            <a href="product-details.html" class="hover-image">
                                                <img src="/template/customer/image/products/product-5.jpg" alt="">
                                            </a>
                                            <div class="hover-btns">
                                                <a href="cart.html" class="single-btn">
                                                    <i class="fas fa-shopping-basket"></i>
                                                </a>
                                                <a href="wishlist.html" class="single-btn">
                                                    <i class="fas fa-heart"></i>
                                                </a>
                                                <a href="compare.html" class="single-btn">
                                                    <i class="fas fa-random"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#quickModal"
                                                   class="single-btn">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-slide">
                            <div class="product-card">
                                <div class="product-header">
                                    <a href="" class="author">
                                        Dpple
                                    </a>
                                    <h3><a href="product-details.html">Beats Solo2 Solo 2 Wired On-Ear
                                        Headphone</a></h3>
                                </div>
                                <div class="product-card--body">
                                    <div class="card-image">
                                        <img src="/template/customer/image/products/product-4.jpg" alt="">
                                        <div class="hover-contents">
                                            <a href="product-details.html" class="hover-image">
                                                <img src="/template/customer/image/products/product-5.jpg" alt="">
                                            </a>
                                            <div class="hover-btns">
                                                <a href="cart.html" class="single-btn">
                                                    <i class="fas fa-shopping-basket"></i>
                                                </a>
                                                <a href="wishlist.html" class="single-btn">
                                                    <i class="fas fa-heart"></i>
                                                </a>
                                                <a href="compare.html" class="single-btn">
                                                    <i class="fas fa-random"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#quickModal"
                                                   class="single-btn">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-slide">
                            <div class="product-card">
                                <div class="product-header">
                                    <a href="" class="author">
                                        Dpple
                                    </a>
                                    <h3><a href="product-details.html">Beats Solo2 Solo 2 Wired On-Ear
                                        Headphone</a></h3>
                                </div>
                                <div class="product-card--body">
                                    <div class="card-image">
                                        <img src="/template/customer/image/products/product-4.jpg" alt="">
                                        <div class="hover-contents">
                                            <a href="product-details.html" class="hover-image">
                                                <img src="/template/customer/image/products/product-5.jpg" alt="">
                                            </a>
                                            <div class="hover-btns">
                                                <a href="cart.html" class="single-btn">
                                                    <i class="fas fa-shopping-basket"></i>
                                                </a>
                                                <a href="wishlist.html" class="single-btn">
                                                    <i class="fas fa-heart"></i>
                                                </a>
                                                <a href="compare.html" class="single-btn">
                                                    <i class="fas fa-random"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#quickModal"
                                                   class="single-btn">
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-block">
                                        <span class="price">£51.20</span>
                                        <del class="price-old">£51.20</del>
                                        <span class="price-discount">20%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="woman" role="tabpanel" aria-labelledby="woman-tab">
                    <div class="product-slider multiple-row  slider-border-multiple-row  sb-slick-slider"
                         data-slick-setting='{
                                        "autoplay": true,
                                        "autoplaySpeed": 8000,
                                        "slidesToShow": 5,
                                        "rows":2,
                                        "dots":true
                                    }' data-slick-responsive='[
                                        {"breakpoint":1200, "settings": {"slidesToShow": 3} },
                                        {"breakpoint":768, "settings": {"slidesToShow": 2} },
                                        {"breakpoint":480, "settings": {"slidesToShow": 1} },
                                        {"breakpoint":320, "settings": {"slidesToShow": 1} }
                                    ]'>
                        <c:forEach var="p" items="${products}">
                            <div class="single-slide">
                                <div class="product-card">
                                    <div class="product-header">
                                        <a href="" class="author">
                                        </a>
                                        <h3><a href="product-details.html">${p.name}</a></h3>
                                    </div>
                                    <div class="product-card--body">
                                        <div class="card-image">
                                            <img src="/products/${p.image}" alt="">
                                            <div class="hover-contents">
                                                <a href="product-details.html" class="hover-image">
                                                    <img src="/products/${p.image}" alt="">
                                                </a>
                                                <div class="hover-btns">
                                                    <a href="cart.html" class="single-btn">
                                                        <i class="fas fa-shopping-basket"></i>
                                                    </a>
                                                    <a type="button" data-toggle="tooltip" onclick="showModal(${p.id})"
                                                       class="single-btn">
                                                        <i class="fas fa-eye"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="price-block">
                                            <span class="price">${p.price}</span>
                                            <del class="price-old">${p.price}</del>
                                            <span class="price-discount">20%</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--=================================
Promotion Section Two
===================================== -->
<section class="section-margin">
    <h2 class="sr-only">Promotion Section</h2>
    <div class="container">
        <div class="promo-wrapper promo-type-four">
            <a href="#" class="promo-image promo-overlay bg-image"
               data-bg="https://htmldemo.net/pustok/pustok/image/bg-images/promo-banner-contained.jpg">
                <!-- <img src="image/bg-images/promo-banner-contained.jpg" alt="" class="w-100 h-100"> -->
            </a>
            <div class="promo-text w-100 justify-content-center justify-content-md-left">
                <div class="row w-100">
                    <div class="col-lg-8">
                        <div class="promo-text-inner">
                            <h2>Buy 3. Get Free 1.</h2>
                            <h3>50% off for selected products in Pustok.</h3>
                            <a href="#" class="btn btn-outlined--red-faded">See More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

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
                            <div id="product-title-api" >
                                <%--api call here--%>
                            </div>
                            <ul class="list-unstyled">
                                <li>Loại: <a href="#" class="list-value font-weight-bold"> Chưa thêm loại</a></li><%--api call here--%>
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

    function showModal(id) {
        $('#quickModal').modal()
        $.ajax({
            url: "/api/product?id=" + id,
            type: 'GET',
            dataType: "json",
            contentType: 'application/json',
            success: function (response) {
                var image = '<img src="/products/' + response.image + '" alt="">'
                var name ='<h3 id="product-title-api" class="product-title">'+response.name+'</h3>'
                $('#product-img-api').html(image)
                $('#product-title-api').html(name)
                $('#product-price-api').html(
                    '<span class="price-new">'+response.salePrice +'</span>' +
                    '<del class="price-old">'+ response.price+'</del>')
                $('#product-description-api').html('<p>'+ response.description+'</p>')
                $('#productId').val(id);
            },
            error: function (response) {
                console.log(response.errors);
            }
        });
    }
</script>

</body>
</html>
