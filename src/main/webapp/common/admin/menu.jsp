<%--
  Created by IntelliJ IDEA.
  User: tuanhtran1
  Date: 6/10/22
  Time: 8:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<div class="left-sidenav">
    <!-- LOGO -->
    <div class="brand">
        <a href="index.html" class="logo"> <span> <img
                src="/template/admin/assets/images/logo-sm.png" alt="logo-small"
                class="logo-sm">
		</span> <span> <img src="/template/admin/assets/images/logo.png"
                            alt="logo-large" class="logo-lg logo-light"> <img
                src="/template/admin/assets/images/logo-dark.png"
                alt="logo-large" class="logo-lg logo-dark">
		</span>
        </a>
    </div>
    <!--end logo-->
    <div class="menu-content h-100" data-simplebar>
        <ul class="metismenu left-sidenav-menu">
            <li class="menu-label mt-0">Admin</li>

            <li><a href="javascript: void(0);"><i data-feather="lock"
                                                  class="align-self-center menu-icon"></i><span>Home</span><span
                    class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
                <ul class="nav-second-level" aria-expanded="false">
                    <li class="nav-item"><a class="nav-link"
                                            href="/template/admin/product-list"><i class="ti-control-record"></i>Products</a>
                    </li>
                    <li class="nav-item"><a class="nav-link"
                                            href="/template/admin/order-list"><i class="ti-control-record"></i>Oders</a></li>
                </ul>
            </li>

            <li><a href="#"><i data-feather="layers"
                               class="align-self-center menu-icon"></i><span>Widgets</span><span
                    class="badge badge-soft-success menu-arrow">New</span></a></li>

            <li><a href="javascript: void(0);"><i
                    data-feather="file-plus" class="align-self-center menu-icon"></i><span>Pages</span><span
                    class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
                <ul class="nav-second-level" aria-expanded="false">
                    <li class="nav-item"><a class="nav-link"
                                            href="pages-blogs.html"><i class="ti-control-record"></i>Blogs</a></li>
                    <li class="nav-item"><a class="nav-link"
                                            href="pages-faqs.html"><i class="ti-control-record"></i>FAQs</a></li>
                    <li class="nav-item"><a class="nav-link"
                                            href="pages-pricing.html"><i class="ti-control-record"></i>Pricing</a></li>
                    <li class="nav-item"><a class="nav-link"
                                            href="pages-profile.html"><i class="ti-control-record"></i>Profile</a></li>
                    <li class="nav-item"><a class="nav-link"
                                            href="pages-starter.html"><i class="ti-control-record"></i>Starter
                        Page</a></li>
                    <li class="nav-item"><a class="nav-link"
                                            href="pages-timeline.html"><i class="ti-control-record"></i>Timeline</a>
                    </li>
                    <li class="nav-item"><a class="nav-link"
                                            href="pages-treeview.html"><i class="ti-control-record"></i>Treeview</a>
                    </li>
                </ul>
            </li>
        </ul>

        <div class="update-msg text-center">
            <a href="javascript: void(0);" class="float-end close-btn text-muted"
               data-dismiss="update-msg" aria-label="Close" aria-hidden="true">
                <i class="mdi mdi-close"></i>
            </a>
            <h5 class="mt-3">Mannat Themes</h5>
            <p class="mb-3">We Design and Develop Clean and High Quality Web
                Applications</p>
            <a href="javascript: void(0);" class="btn btn-outline-warning btn-sm">Upgrade
                your plan</a>
        </div>
    </div>
</div>