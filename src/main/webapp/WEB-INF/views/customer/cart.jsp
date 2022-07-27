<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 21/07/2022
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                    <li class="breadcrumb-item"><a href="/customer/home">Home</a></li>
                    <li class="breadcrumb-item active">Cart</li>
                </ol>
            </nav>
        </div>
    </div>
</section>
<main class="cart-page-main-block inner-page-sec-padding-bottom">
    <div class="cart_area cart-area-padding  ">
        <div class="container">
            <div class="page-section-title">
                <h1>Shopping Cart</h1>
            </div>
            <div class="row">
                <div class="col-12">
                    <form action="#" class="">
                        <!-- Cart Table -->
                        <div class="cart-table table-responsive mb--40">
                            <table class="table">
                                <!-- Head Row -->
                                <thead>
                                <tr>
                                    <th class="pro-remove"></th>
                                    <th class="pro-thumbnail">Image</th>
                                    <th class="pro-title">Product</th>
                                    <th class="pro-price">Price</th>
                                    <th class="pro-quantity">Quantity</th>
                                    <th class="pro-subtotal">Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <!-- Product Row -->
                                <tr>
                                    <td class="pro-remove"><a href="#"><i class="far fa-trash-alt"></i></a>
                                    </td>
                                    <td class="pro-thumbnail"><a href="#"><img src="/template/customer/image/products/product-1.jpg" alt="Product"></a></td>
                                    <td class="pro-title"><a href="#">Rinosin Glasses</a></td>
                                    <td class="pro-price"><span>$395.00</span></td>
                                    <td class="pro-quantity">
                                        <div class="pro-qty">
                                            <div class="count-input-block">
                                                <input type="number" class="form-control text-center" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="pro-subtotal"><span>$395.00</span></td>
                                </tr>
                                <!-- Product Row -->
                                <tr>
                                    <td class="pro-remove"><a href="#"><i class="far fa-trash-alt"></i></a>
                                    </td>
                                    <td class="pro-thumbnail"><a href="#"><img src="/template/customer/image/products/product-2.jpg" alt="Product"></a></td>
                                    <td class="pro-title"><a href="#">Rinosin Glasses</a></td>
                                    <td class="pro-price"><span>$395.00</span></td>
                                    <td class="pro-quantity">
                                        <div class="pro-qty">
                                            <div class="count-input-block">
                                                <input type="number" class="form-control text-center" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="pro-subtotal"><span>$395.00</span></td>
                                </tr>
                                <!-- Discount Row  -->
                                <tr>
                                    <td colspan="6" class="actions">
                                        <div class="coupon-block">
                                            <div class="coupon-text">
                                                <label for="coupon_code">Coupon:</label>
                                                <input type="text" name="coupon_code" class="input-text" id="coupon_code" value="" placeholder="Coupon code">
                                            </div>
                                            <div class="coupon-btn">
                                                <input type="submit" class="btn btn-outlined" name="apply_coupon" value="Apply coupon">
                                            </div>
                                        </div>
                                        <div class="update-block text-right">
                                            <input type="submit" class="btn btn-outlined" name="update_cart" value="Update cart">
                                            <input type="hidden" id="_wpnonce" name="_wpnonce" value="05741b501f"><input type="hidden" name="_wp_http_referer" value="/petmark/cart/">
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="cart-section-2">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-12 mb--30 mb-lg--0">
                    <!-- slide Block 5 / Normal Slider -->
                    <div class="cart-block-title">
                        <h2>YOU MAY BE INTERESTED IN…</h2>
                    </div>
                    <div class="product-slider sb-slick-slider slick-initialized slick-slider" data-slick-setting="{
							          &quot;autoplay&quot;: true,
							          &quot;autoplaySpeed&quot;: 8000,
							          &quot;slidesToShow&quot;: 2
									  }" data-slick-responsive="[
                {&quot;breakpoint&quot;:992, &quot;settings&quot;: {&quot;slidesToShow&quot;: 2} },
                {&quot;breakpoint&quot;:768, &quot;settings&quot;: {&quot;slidesToShow&quot;: 3} },
                {&quot;breakpoint&quot;:575, &quot;settings&quot;: {&quot;slidesToShow&quot;: 2} },
                {&quot;breakpoint&quot;:480, &quot;settings&quot;: {&quot;slidesToShow&quot;: 1} },
                {&quot;breakpoint&quot;:320, &quot;settings&quot;: {&quot;slidesToShow&quot;: 1} }
            ]"><div class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 1130px; transform: translate3d(0px, 0px, 0px);"><div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 226px;"><div><div class="single-slide" style="width: 100%; display: inline-block;">
                        <div class="product-card">
                            <div class="product-header">
											<span class="author">
												Lpple
											</span>
                                <h3><a href="product-details.html" tabindex="0">Revolutionize Your BOOK With These
                                    Easy-peasy Tips</a></h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/template/customer/image/products/product-10.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image" tabindex="0">
                                            <img src="/template/customer/image/products/product-1.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart.html" class="single-btn" tabindex="0">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist.html" class="single-btn" tabindex="0">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare.html" class="single-btn" tabindex="0">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal" class="single-btn" tabindex="0">
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
                    </div></div></div><div class="slick-slide slick-active" data-slick-index="1" aria-hidden="false" style="width: 226px;"><div><div class="single-slide" style="width: 100%; display: inline-block;">
                        <div class="product-card">
                            <div class="product-header">
											<span class="author">
												Jpple
											</span>
                                <h3><a href="product-details.html" tabindex="0">Turn Your BOOK Into High Machine</a></h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/template/customer/image/products/product-2.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image" tabindex="0">
                                            <img src="/template/customer/image/products/product-1.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart.html" class="single-btn" tabindex="0">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist.html" class="single-btn" tabindex="0">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare.html" class="single-btn" tabindex="0">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal" class="single-btn" tabindex="0">
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
                    </div></div></div><div class="slick-slide" data-slick-index="2" aria-hidden="true" style="width: 226px;" tabindex="-1"><div><div class="single-slide" style="width: 100%; display: inline-block;">
                        <div class="product-card">
                            <div class="product-header">
											<span class="author">
												Wpple
											</span>
                                <h3><a href="product-details.html" tabindex="-1">3 Ways Create Better BOOK With</a></h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/template/customer/image/products/product-3.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image" tabindex="-1">
                                            <img src="/template/customer/image/products/product-2.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart.html" class="single-btn" tabindex="-1">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist.html" class="single-btn" tabindex="-1">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare.html" class="single-btn" tabindex="-1">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal" class="single-btn" tabindex="-1">
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
                    </div></div></div><div class="slick-slide" data-slick-index="3" aria-hidden="true" style="width: 226px;" tabindex="-1"><div><div class="single-slide" style="width: 100%; display: inline-block;">
                        <div class="product-card">
                            <div class="product-header">
											<span class="author">
												Epple
											</span>
                                <h3><a href="product-details.html" tabindex="-1">What You Can Learn From Bill Gates</a>
                                </h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/template/customer/image/products/product-5.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image" tabindex="-1">
                                            <img src="/template/customer/image/products/product-4.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart.html" class="single-btn" tabindex="-1">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist.html" class="single-btn" tabindex="-1">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare.html" class="single-btn" tabindex="-1">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal" class="single-btn" tabindex="-1">
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
                    </div></div></div><div class="slick-slide" data-slick-index="4" aria-hidden="true" style="width: 226px;" tabindex="-1"><div><div class="single-slide" style="width: 100%; display: inline-block;">
                        <div class="product-card">
                            <div class="product-header">
											<span class="author">
												Hpple
											</span>
                                <h3><a href="product-details.html" tabindex="-1">Simple Things You To Save BOOK</a></h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/template/customer/image/products/product-6.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image" tabindex="-1">
                                            <img src="/template/customer/image/products/product-4.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart.html" class="single-btn" tabindex="-1">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist.html" class="single-btn" tabindex="-1">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare.html" class="single-btn" tabindex="-1">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal" class="single-btn" tabindex="-1">
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
                    </div></div></div></div></div></div>
                </div>
                <!-- Cart Summary -->
                <div class="col-lg-6 col-12 d-flex">
                    <div class="cart-summary">
                        <div class="cart-summary-wrap">
                            <h4><span>Cart Summary</span></h4>
                            <p>Sub Total <span class="text-primary">$1250.00</span></p>
                            <p>Shipping Cost <span class="text-primary">$00.00</span></p>
                            <h2>Grand Total <span class="text-primary">$1250.00</span></h2>
                        </div>
                        <div class="cart-summary-button">
                            <a href="checkout.html" class="checkout-btn c-btn btn--primary">Checkout</a>
                            <button class="update-btn c-btn btn-outlined">Update Cart</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
</body>
</html>
