<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 7/2/22
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="site-header header-2 mb--20 d-none d-lg-block">
    <div class="header-middle pt--10 pb--10">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3">
                    <a href="/customer/home" class="site-brand">
                        <img src="/template/customer/image/logo.png" alt="">
                    </a>
                </div>
                <div class="col-lg-5">
                    <div class="header-search-block">
                        <input id="searchProduct" type="text" placeholder="Bạn muốn tìm kiếm gì ?">
                        <button onclick="search()">Tìm kiếm</button>
                    </div>
                </div>

                <div class="col-lg-4">

                    <div class="main-navigation flex-lg-right">
                        <div class="cart-widget">
                            <security:authorize access="isAuthenticated() == false ">
                                <div class="login-block">
                                    <a href="/customer/login" class="font-weight-bold">Đăng nhập</a> <br>
                                    <span>hoặc</span><a href="/customer/register">Đăng kí</a>
                                </div>
                            </security:authorize>

                            <security:authorize access="isAuthenticated()">
                                <div class="login-block">
                                    <span>Xin chào: <a href="/customer/account"><security:authentication property="principal.fullName"/></a></span>
                                    <a href="/logout" class="font-weight-bold">Đăng xuất</a> <br>
                                </div>
                                <div class="cart-block">
                                    <div class="cart-total" id="cart-info">
<%--                                        callapi--%>
                                    </div>
                                    <div class="cart-dropdown-block" id="cart-dropdown-block">
                                        <div class=" single-cart-block " id="carts-detail">
<%--                                            callapi--%>
                                        </div>
                                        <div class=" single-cart-block ">
                                            <div id="blockCart" class="btn-block">
<%--                                                <a href="/customer/cart/<security:authentication property="principal.id"/>" class="btn">View Cart <i--%>
<%--                                                        class="fas fa-chevron-right"></i></a>--%>
<%--                                                <a href="/customer/checkout/<security:authentication property="principal.id"/>" class="btn btn--primary">Check Out <i--%>
<%--                                                        class="fas fa-chevron-right"></i></a>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </security:authorize>
                        </div>
                        <!-- @include('menu.htm') -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-bottom bg-primary">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3">
                    <nav class="category-nav white-nav  ">
                        <div>
                            <a href="javascript:void(0)" class="category-trigger"><i
                                    class="fa fa-bars"></i>Browse
                                categories</a>
                            <ul class="category-menu">
                                <c:forEach var="item" items="${categories}" begin="0" end="7">
                                    <li class="cat-item">
                                        <a type="button" onclick="category('${item.code}')">${item.value}</a>
                                    </li>
                                </c:forEach>
                                <li class="cat-item"><a href="#" class="js-expand-hidden-menu">More
                                    Categories</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header-phone color-white">
                        <div class="icon">
                            <i class="fas fa-headphones-alt"></i>
                        </div>
                        <div class="text">
                            <p>Hỗ trợ miễn phí</p>
                            <p class="font-weight-bold number">+84-333-054-989</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="main-navigation flex-lg-right">
                        <ul class="main-menu menu-right main-menu--white li-last-0">
                            <li class="menu-item">
                                <a href="#">Trang chủ</a>
                            </li>
                            <!-- Shop -->
                            <li class="menu-item has-children mega-menu">
                                <a href="/customer/products">shop <i
                                        class="fas fa-chevron-down dropdown-arrow"></i></a>
                                <ul class="sub-menu four-column">
                                    <li class="cus-col-25">
                                        <h3 class="menu-title"><a href="javascript:void(0)">Shop Grid </a></h3>
                                        <ul class="mega-single-block">
                                            <li><a href="shop-grid.html">Fullwidth</a></li>
                                            <li><a href="shop-grid-left-sidebar.html">left Sidebar</a></li>
                                            <li><a href="shop-grid-right-sidebar.html">Right Sidebar</a></li>
                                        </ul>
                                    </li>
                                    <li class="cus-col-25">
                                        <h3 class="menu-title"><a href="javascript:void(0)">Shop List</a></h3>
                                        <ul class="mega-single-block">
                                            <li><a href="shop-list.html">Fullwidth</a></li>
                                            <li><a href="shop-list-left-sidebar.html">left Sidebar</a></li>
                                            <li><a href="shop-list-right-sidebar.html">Right Sidebar</a></li>
                                        </ul>
                                    </li>
                                    <li class="cus-col-25">
                                        <h3 class="menu-title"><a href="javascript:void(0)">Product Details
                                            1</a></h3>
                                        <ul class="mega-single-block">
                                            <li><a href="product-details.html">Product Details Page</a></li>
                                            <li><a href="product-details-affiliate.html">Product Details
                                                Affiliate</a></li>
                                            <li><a href="product-details-group.html">Product Details Group</a>
                                            </li>
                                            <li><a href="product-details-variable.html">Product Details
                                                Variables</a></li>
                                        </ul>
                                    </li>
                                    <li class="cus-col-25">
                                        <h3 class="menu-title"><a href="javascript:void(0)">Product Details
                                            2</a></h3>
                                        <ul class="mega-single-block">
                                            <li><a href="product-details-left-thumbnail.html">left Thumbnail</a>
                                            </li>
                                            <li><a href="product-details-right-thumbnail.html">Right
                                                Thumbnail</a></li>
                                            <li><a href="product-details-left-gallery.html">Left Gallery</a>
                                            </li>
                                            <li><a href="product-details-right-gallery.html">Right Gallery</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <!-- Pages -->
                            <li class="menu-item has-children">
                                <a href="javascript:void(0)">Pages <i
                                        class="fas fa-chevron-down dropdown-arrow"></i></a>
                                <ul class="sub-menu">
                                    <li><a href="cart.html">Cart</a></li>
                                    <li><a href="checkout.html">Checkout</a></li>
                                    <li><a href="compare.html">Compare</a></li>
                                    <li><a href="wishlist.html">Wishlist</a></li>
                                    <li><a href="login-register.html">Login Register</a></li>
                                    <li><a href="my-account.html">My Account</a></li>
                                    <li><a href="order-complete.html">Order Complete</a></li>
                                    <li><a href="faq.html">Faq</a></li>
                                    <li><a href="contact-2.html">contact 02</a></li>
                                </ul>
                            </li>
                            <!-- Blog -->
                            <li class="menu-item has-children mega-menu">
                                <a href="javascript:void(0)">Blog <i
                                        class="fas fa-chevron-down dropdown-arrow"></i></a>
                                <ul class="sub-menu three-column">
                                    <li class="cus-col-33">
                                        <h3 class="menu-title"><a href="javascript:void(0)">Blog Grid</a></h3>
                                        <ul class="mega-single-block">
                                            <li><a href="blog.html">Full Widh (Default)</a></li>
                                            <li><a href="blog-left-sidebar.html">left Sidebar</a></li>
                                            <li><a href="blog-right-sidebar.html">Right Sidebar</a></li>
                                        </ul>
                                    </li>
                                    <li class="cus-col-33">
                                        <h3 class="menu-title"><a href="javascript:void(0)">Blog List </a></h3>
                                        <ul class="mega-single-block">
                                            <!-- <li><a href="blog-list.html">Full Widh (Default)</a></li> -->
                                            <li><a href="blog-list-left-sidebar.html">left Sidebar</a></li>
                                            <li><a href="blog-list-right-sidebar.html">Right Sidebar</a></li>
                                        </ul>
                                    </li>
                                    <li class="cus-col-33">
                                        <h3 class="menu-title"><a href="javascript:void(0)">Blog Details</a>
                                        </h3>
                                        <ul class="mega-single-block">
                                            <li><a href="blog-details.html">Image Format (Default)</a></li>
                                            <li><a href="blog-details-gallery.html">Gallery Format</a></li>
                                            <li><a href="blog-details-audio.html">Audio Format</a></li>
                                            <li><a href="blog-details-video.html">Video Format</a></li>
                                            <li><a href="blog-details-left-sidebar.html">left Sidebar</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="menu-item">
                                <a href="contact.html">Liên hệ</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="site-mobile-menu">
    <header class="mobile-header d-block d-lg-none pt--10 pb-md--10">
        <div class="container">
            <div class="row align-items-sm-end align-items-center">
                <div class="col-md-4 col-7">
                    <a href="index.html" class="site-brand">
                        <img src="/template/customer/image/logo.png" alt="">
                    </a>
                </div>
                <div class="col-md-5 order-3 order-md-2">
                    <nav class="category-nav   ">
                        <div>
                            <a href="javascript:void(0)" class="category-trigger"><i
                                    class="fa fa-bars"></i>Browse
                                categories</a>
                            <ul class="category-menu">
                                <li class="cat-item">
                                    <a href="#">Arts & Photography</a>
                                    <ul class="sub-menu">
                                        <li><a href="#">Bags & Cases</a></li>
                                        <li><a href="#">Binoculars & Scopes</a></li>
                                        <li><a href="#">Digital Cameras</a></li>
                                        <li><a href="#">Film Photography</a></li>
                                        <li><a href="#">Lighting & Studio</a></li>
                                    </ul>
                                </li>

                                <li class="cat-item"><a href="#" class="js-expand-hidden-menu">More
                                    Categories</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
                <div class="col-md-3 col-5  order-md-3 text-right">
                    <div class="mobile-header-btns header-top-widget">
                        <ul class="header-links">
                            <li class="sin-link">
                                <a href="cart.html" class="cart-link link-icon"><i class="ion-bag"></i></a>
                            </li>
                            <li class="sin-link">
                                <a href="javascript:" class="link-icon hamburgur-icon off-canvas-btn"><i
                                        class="ion-navicon"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--Off Canvas Navigation Start-->
    <aside class="off-canvas-wrapper">
        <div class="btn-close-off-canvas">
            <i class="ion-android-close"></i>
        </div>
        <div class="off-canvas-inner">
            <!-- search box start -->
            <div class="search-box offcanvas">
                <form>
                    <input type="text" placeholder="Search Here">
                    <button class="search-btn"><i class="ion-ios-search-strong"></i></button>
                </form>
            </div>
            <!-- search box end -->
            <!-- mobile menu start -->
            <div class="mobile-navigation">
                <!-- mobile menu navigation start -->
                <nav class="off-canvas-nav">
                    <ul class="mobile-menu main-mobile-menu">
                        <li class="menu-item-has-children">
                            <a href="#">Home</a>
                            <ul class="sub-menu">
                                <li><a href="index.html">Home One</a></li>
                                <li><a href="index-2.html">Home Two</a></li>
                                <li><a href="index-3.html">Home Three</a></li>
                                <li><a href="index-4.html">Home Four</a></li>
                                <li><a href="index-5.html">Home Five</a></li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">Blog</a>
                            <ul class="sub-menu">
                                <li class="menu-item-has-children">
                                    <a href="#">Blog Grid</a>
                                    <ul class="sub-menu">
                                        <li><a href="blog.html">Full Widh (Default)</a></li>
                                        <li><a href="blog-left-sidebar.html">left Sidebar</a></li>
                                        <li><a href="blog-right-sidebar.html">Right Sidebar</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">Blog List</a>
                                    <ul class="sub-menu">
                                        <li><a href="blog-list.html">Full Widh (Default)</a></li>
                                        <li><a href="blog-list-left-sidebar.html">left Sidebar</a></li>
                                        <li><a href="blog-list-right-sidebar.html">Right Sidebar</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">Blog Details</a>
                                    <ul class="sub-menu">
                                        <li><a href="blog-details.html">Image Format (Default)</a></li>
                                        <li><a href="blog-details-gallery.html">Gallery Format</a></li>
                                        <li><a href="blog-details-audio.html">Audio Format</a></li>
                                        <li><a href="blog-details-video.html">Video Format</a></li>
                                        <li><a href="blog-details-left-sidebar.html">left Sidebar</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">Shop</a>
                            <ul class="sub-menu">
                                <li class="menu-item-has-children">
                                    <a href="#">Shop Grid</a>
                                    <ul class="sub-menu">
                                        <li><a href="shop-grid.html">Fullwidth</a></li>
                                        <li><a href="shop-grid-left-sidebar.html">left Sidebar</a></li>
                                        <li><a href="shop-grid-right-sidebar.html">Right Sidebar</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">Shop List</a>
                                    <ul class="sub-menu">
                                        <li><a href="shop-list.html">Fullwidth</a></li>
                                        <li><a href="shop-list-left-sidebar.html">left Sidebar</a></li>
                                        <li><a href="shop-list-right-sidebar.html">Right Sidebar</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">Product Details 1</a>
                                    <ul class="sub-menu">
                                        <li><a href="product-details.html">Product Details Page</a></li>
                                        <li><a href="product-details-affiliate.html">Product Details
                                            Affiliate</a></li>
                                        <li><a href="product-details-group.html">Product Details Group</a></li>
                                        <li><a href="product-details-variable.html">Product Details
                                            Variables</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">Product Details 2</a>
                                    <ul class="sub-menu">
                                        <li><a href="product-details-left-thumbnail.html">left Thumbnail</a>
                                        </li>
                                        <li><a href="product-details-right-thumbnail.html">Right Thumbnail</a>
                                        </li>
                                        <li><a href="product-details-left-gallery.html">Left Gallery</a></li>
                                        <li><a href="product-details-right-gallery.html">Right Gallery</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">Pages</a>
                            <ul class="sub-menu">
                                <li><a href="cart.html">Cart</a></li>
                                <li><a href="checkout.html">Checkout</a></li>
                                <li><a href="compare.html">Compare</a></li>
                                <li><a href="wishlist.html">Wishlist</a></li>
                                <li><a href="login-register.html">Login Register</a></li>
                                <li><a href="my-account.html">My Account</a></li>
                                <li><a href="order-complete.html">Order Complete</a></li>
                                <li><a href="faq.html">Faq</a></li>
                                <li><a href="contact-2.html">contact 02</a></li>
                            </ul>
                        </li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </nav>
                <!-- mobile menu navigation end -->
            </div>
            <!-- mobile menu end -->
            <nav class="off-canvas-nav">
                <ul class="mobile-menu menu-block-2">
                    <li class="menu-item-has-children">
                        <a href="#">Currency - USD $ <i class="fas fa-angle-down"></i></a>
                        <ul class="sub-menu">
                            <li><a href="cart.html">USD $</a></li>
                            <li><a href="checkout.html">EUR €</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#">Lang - Eng<i class="fas fa-angle-down"></i></a>
                        <ul class="sub-menu">
                            <li>Eng</li>
                            <li>Ban</li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#">My Account <i class="fas fa-angle-down"></i></a>
                        <ul class="sub-menu">
                            <li><a href="">My Account</a></li>
                            <li><a href="">Order History</a></li>
                            <li><a href="">Transactions</a></li>
                            <li><a href="">Downloads</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="off-canvas-bottom">
                <div class="contact-list mb--10">
                    <a href="" class="sin-contact"><i class="fas fa-mobile-alt"></i>(12345) 78790220</a>
                    <a href="" class="sin-contact"><i class="fas fa-envelope"></i>examle@handart.com</a>
                </div>
                <div class="off-canvas-social">
                    <a href="#" class="single-icon"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="single-icon"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="single-icon"><i class="fas fa-rss"></i></a>
                    <a href="#" class="single-icon"><i class="fab fa-youtube"></i></a>
                    <a href="#" class="single-icon"><i class="fab fa-google-plus-g"></i></a>
                    <a href="#" class="single-icon"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </aside>
    <!--Off Canvas Navigation End-->
</div>

<div class="sticky-init fixed-header common-sticky">
    <div class="container d-none d-lg-block">
        <div class="row align-items-center">
            <div class="col-lg-4">
                <a href="index.html" class="site-brand">
                    <img src="/template/customer/image/logo.png" alt="">
                </a>
            </div>
            <div class="col-lg-8">
                <div class="main-navigation flex-lg-right">
                    <ul class="main-menu menu-right ">
                        <li class="menu-item has-children">
                            <a href="javascript:void(0)">Home <i
                                    class="fas fa-chevron-down dropdown-arrow"></i></a>
                            <ul class="sub-menu">
                                <li><a href="index.html">Home One</a></li>
                                <li><a href="index-2.html">Home Two</a></li>
                                <li><a href="index-3.html">Home Three</a></li>
                                <li><a href="index-4.html">Home Four</a></li>
                                <li><a href="index-5.html">Home Five</a></li>
                            </ul>
                        </li>
                        <!-- Shop -->
                        <li class="menu-item has-children mega-menu">
                            <a href="javascript:void(0)">shop <i
                                    class="fas fa-chevron-down dropdown-arrow"></i></a>
                            <ul class="sub-menu four-column">
                                <li class="cus-col-25">
                                    <h3 class="menu-title"><a href="javascript:void(0)">Shop Grid </a></h3>
                                    <ul class="mega-single-block">
                                        <li><a href="shop-grid.html">Fullwidth</a></li>
                                        <li><a href="shop-grid-left-sidebar.html">left Sidebar</a></li>
                                        <li><a href="shop-grid-right-sidebar.html">Right Sidebar</a></li>
                                    </ul>
                                </li>
                                <li class="cus-col-25">
                                    <h3 class="menu-title"><a href="javascript:void(0)">Shop List</a></h3>
                                    <ul class="mega-single-block">
                                        <li><a href="shop-list.html">Fullwidth</a></li>
                                        <li><a href="shop-list-left-sidebar.html">left Sidebar</a></li>
                                        <li><a href="shop-list-right-sidebar.html">Right Sidebar</a></li>
                                    </ul>
                                </li>
                                <li class="cus-col-25">
                                    <h3 class="menu-title"><a href="javascript:void(0)">Product Details 1</a>
                                    </h3>
                                    <ul class="mega-single-block">
                                        <li><a href="product-details.html">Product Details Page</a></li>
                                        <li><a href="product-details-affiliate.html">Product Details
                                            Affiliate</a></li>
                                        <li><a href="product-details-group.html">Product Details Group</a></li>
                                        <li><a href="product-details-variable.html">Product Details
                                            Variables</a></li>
                                    </ul>
                                </li>
                                <li class="cus-col-25">
                                    <h3 class="menu-title"><a href="javascript:void(0)">Product Details 2</a>
                                    </h3>
                                    <ul class="mega-single-block">
                                        <li><a href="product-details-left-thumbnail.html">left Thumbnail</a>
                                        </li>
                                        <li><a href="product-details-right-thumbnail.html">Right Thumbnail</a>
                                        </li>
                                        <li><a href="product-details-left-gallery.html">Left Gallery</a></li>
                                        <li><a href="product-details-right-gallery.html">Right Gallery</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <!-- Pages -->
                        <li class="menu-item has-children">
                            <a href="javascript:void(0)">Pages <i
                                    class="fas fa-chevron-down dropdown-arrow"></i></a>
                            <ul class="sub-menu">
                                <li><a href="cart.html">Cart</a></li>
                                <li><a href="checkout.html">Checkout</a></li>
                                <li><a href="compare.html">Compare</a></li>
                                <li><a href="wishlist.html">Wishlist</a></li>
                                <li><a href="login-register.html">Login Register</a></li>
                                <li><a href="my-account.html">My Account</a></li>
                                <li><a href="order-complete.html">Order Complete</a></li>
                                <li><a href="faq.html">Faq</a></li>
                                <li><a href="contact-2.html">contact 02</a></li>
                            </ul>
                        </li>
                        <!-- Blog -->
                        <li class="menu-item has-children mega-menu">
                            <a href="javascript:void(0)">Blog <i
                                    class="fas fa-chevron-down dropdown-arrow"></i></a>
                            <ul class="sub-menu three-column">
                                <li class="cus-col-33">
                                    <h3 class="menu-title"><a href="javascript:void(0)">Blog Grid</a></h3>
                                    <ul class="mega-single-block">
                                        <li><a href="blog.html">Full Widh (Default)</a></li>
                                        <li><a href="blog-left-sidebar.html">left Sidebar</a></li>
                                        <li><a href="blog-right-sidebar.html">Right Sidebar</a></li>
                                    </ul>
                                </li>
                                <li class="cus-col-33">
                                    <h3 class="menu-title"><a href="javascript:void(0)">Blog List </a></h3>
                                    <ul class="mega-single-block">
                                        <!-- <li><a href="blog-list.html">Full Widh (Default)</a></li> -->
                                        <li><a href="blog-list-left-sidebar.html">left Sidebar</a></li>
                                        <li><a href="blog-list-right-sidebar.html">Right Sidebar</a></li>
                                    </ul>
                                </li>
                                <li class="cus-col-33">
                                    <h3 class="menu-title"><a href="javascript:void(0)">Blog Details</a></h3>
                                    <ul class="mega-single-block">
                                        <li><a href="blog-details.html">Image Format (Default)</a></li>
                                        <li><a href="blog-details-gallery.html">Gallery Format</a></li>
                                        <li><a href="blog-details-audio.html">Audio Format</a></li>
                                        <li><a href="blog-details-video.html">Video Format</a></li>
                                        <li><a href="blog-details-left-sidebar.html">left Sidebar</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="contact.html">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

