<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" 
         pageEncoding="UTF-8"%>

<sql:query var="categoryList" dataSource="jdbc/btl_ecommerce"> 
    SELECT category_id, [name] FROM category;
</sql:query>

<!DOCTYPE html>	
<html lang="en">	
    <head>	
<!--        <title>${pageProps.get("title")}</title>	-->
        <title>HELLO</title>	

        <meta charset="utf-8">	
        <meta http-equiv="X-UA-Compatible" content="IE=edge">	
        <meta name="description" content="OneTech shop project">	
        <meta name="viewport" content="width=device-width, initial-scale=1">	
        <link rel="stylesheet" type="text/css" href="${initParam.webResPath}styles/bootstrap4/bootstrap.min.css">	
        <link href="${initParam.webResPath}plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">	
        <link rel="stylesheet" type="text/css" href="${initParam.webResPath}plugins/OwlCarousel2-2.2.1/owl.carousel.css">	
        <link rel="stylesheet" type="text/css" href="${initParam.webResPath}plugins/OwlCarousel2-2.2.1/owl.theme.default.css">	
        <link rel="stylesheet" type="text/css" href="${initParam.webResPath}plugins/OwlCarousel2-2.2.1/animate.css">
    </head>	
    <body>	
        <div class="super_container">	

            <!-- Header -->	

            <header class="header">	
                <!-- Top Bar -->	
                <div class="top_bar">	
                    <div class="container">	
                        <div class="row">	
                            <div class="col d-flex flex-row">	
                                <div class="top_bar_contact_item"><div class="top_bar_icon"><img src="${initParam.webResPath}images/mail.png" alt=""></div><a href="mailto:nhom.11.cnpm@gmail.com">nhom.11.cnpm@gmail.com</a></div>	
                                <div class="top_bar_content ml-auto">
                                    <div class="top_bar_user">	
                                        <div class="user_icon"><img src="${initParam.webResPath}images/user.svg" alt=""></div>	
                                        <div><a href="/login">Đăng ký</a></div>	
                                        <div><a href="/signup">Đăng nhập</a></div>	
                                    </div>	
                                </div>	
                            </div>	
                        </div>	
                    </div>			
                </div>	
                <!-- Header Main -->	
                <div class="header_main">	
                    <div class="container">	
                        <div class="row">	
                            <!-- Logo -->	
                            <div class="col-lg-2 col-sm-3 col-3 order-1">	
                                <div class="logo_container">	
                                    <div class="logo"><a href="#">OneTech</a></div>	
                                </div>	
                            </div>	
                            <!-- Search -->	
                            <div class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">	
                                <div class="header_search">	
                                    <div class="header_search_content">	
                                        <div class="header_search_form_container">	
                                            <form action="search" method="GET" class="header_search_form clearfix">	
                                                <input name="q" type="search" required="required" class="header_search_input" placeholder="Bạn muốn tìm...">	
                                                <input name="cat" type="search" class="catField" style="display:none">	
                                                <div class="custom_dropdown">	
                                                    <div class="custom_dropdown_list">	
                                                        <span class="custom_dropdown_placeholder clc">Tất cả</span>	
                                                        <i class="fas fa-chevron-down"></i>	
                                                        <ul class="custom_list clc">	
                                                            <li><a class="clc" href="#">Tất cả</a></li>
                                                                <c:forEach var="cat" items="${categoryList.rows}"> 
                                                                <li><a class="clc" href="#">${cat.name}</a></li>	
                                                                </c:forEach>
                                                        </ul>
                                                    </div>	
                                                </div>	
                                                <button type="submit" class="header_search_button trans_300" value="Tìm kiếm"><img src="${initParam.webResPath}images/search.png" alt=""></button>	
                                            </form>
                                        </div>	
                                    </div>	
                                </div>	
                            </div>	
                            <!-- Wishlist -->	
                            <div class="col-lg-4 col-9 order-lg-3 order-2 text-lg-left text-right">	
                                <div class="wishlist_cart d-flex flex-row align-items-center justify-content-end">	
                                    <div class="wishlist d-flex flex-row align-items-center justify-content-end">	
                                        <div class="wishlist_icon"><img src="${initParam.webResPath}images/heart.png" alt=""></div>	
                                        <div class="wishlist_content">	
                                            <div class="wishlist_text"><a href="#">Wishlist</a></div>	
                                            <div class="wishlist_count">10</div>	
                                        </div>	
                                    </div>	
                                    <!-- Cart -->	
                                    <div class="cart">	
                                        <div class="cart_container d-flex flex-row align-items-center justify-content-end">	
                                            <div class="cart_icon">	
                                                <img src="${initParam.webResPath}images/cart.png" alt="">	
                                                <div class="cart_count"><span>10</span></div>	
                                            </div>	
                                            <div class="cart_content">	
                                                <div class="cart_text"><a href="#">Giỏ hàng</a></div>	
                                                <div class="cart_price">$85</div>	
                                            </div>	
                                        </div>	
                                    </div>	
                                </div>	
                            </div>	
                        </div>	
                    </div>	
                </div>	

                <!-- Main Navigation -->	
                <nav class="main_nav">	
                    <div class="container">	
                        <div class="row">	
                            <div class="col">	

                                <div class="main_nav_content d-flex flex-row">	
                                    <!-- Categories Menu -->	
                                    <div class="cat_menu_container">	
                                        <div class="cat_menu_title d-flex flex-row align-items-center justify-content-start">	
                                            <div class="cat_burger"><span></span><span></span><span></span></div>	
                                            <div class="cat_menu_text">Danh mục</div>	
                                        </div>	
                                        <ul class="cat_menu">	
                                            <c:forEach var="cat" items="${categoryList.rows}">
                                                <li><a href="category/${cat.id}">${cat.name}<i class="fas fa-chevron-right ml-auto"></i></a></li>	
                                                    </c:forEach>
                                        </ul>	
                                    </div>	
                                    <!-- Main Nav Menu -->	
                                    <div class="main_nav_menu ml-auto">	
                                        <ul class="standard_dropdown main_nav_dropdown">	
                                            <li><a href="index">Trang chủ<i class="fas fa-chevron-down"></i></a></li>
                                            <li><a href="blog.html">Blog<i class="fas fa-chevron-down"></i></a></li>	
                                            <li><a href="contact">Liên hệ<i class="fas fa-chevron-down"></i></a></li>	
                                        </ul>	
                                    </div>	
                                    <!-- Menu Trigger -->	
                                    <div class="menu_trigger_container ml-auto">	
                                        <div class="menu_trigger d-flex flex-row align-items-center justify-content-end">	
                                            <div class="menu_burger">	
                                                <div class="menu_trigger_text">Menu</div>	
                                                <div class="cat_burger menu_burger_inner"><span></span><span></span><span></span></div>	
                                            </div>	
                                        </div>	
                                    </div>	
                                </div>	
                            </div>	
                        </div>	
                    </div>	
                </nav>	

                <!-- Menu -->	
                <div class="page_menu">	
                    <div class="container">	
                        <div class="row">	
                            <div class="col">	

                                <div class="page_menu_content">	

                                    <div class="page_menu_search">	
                                        <form action="#">	
                                            <input type="search" required="required" class="page_menu_search_input" placeholder="Search for products...">	
                                        </form>	
                                    </div>	
                                    <ul class="page_menu_nav">	
                                        <li class="page_menu_item has-children">	
                                            <a href="#">Language<i class="fa fa-angle-down"></i></a>	
                                            <ul class="page_menu_selection">	
                                                <li><a href="#">English<i class="fa fa-angle-down"></i></a></li>	
                                                <li><a href="#">Italian<i class="fa fa-angle-down"></i></a></li>	
                                                <li><a href="#">Spanish<i class="fa fa-angle-down"></i></a></li>	
                                                <li><a href="#">Japanese<i class="fa fa-angle-down"></i></a></li>	
                                            </ul>	
                                        </li>	
                                        <li class="page_menu_item has-children">	
                                            <a href="#">Currency<i class="fa fa-angle-down"></i></a>	
                                            <ul class="page_menu_selection">	
                                                <li><a href="#">US Dollar<i class="fa fa-angle-down"></i></a></li>	
                                                <li><a href="#">EUR Euro<i class="fa fa-angle-down"></i></a></li>	
                                                <li><a href="#">GBP British Pound<i class="fa fa-angle-down"></i></a></li>	
                                                <li><a href="#">JPY Japanese Yen<i class="fa fa-angle-down"></i></a></li>	
                                            </ul>	
                                        </li>	
                                        <li class="page_menu_item">	
                                            <a href="index">Trang chủ<i class="fa fa-angle-down"></i></a>	
                                        </li>	
                                        <li class="page_menu_item">	
                                            <a href="#">Hot Deals<i class="fa fa-angle-down"></i></a>	
                                        </li>
                                        <li class="page_menu_item"><a href="blog">Blog<i class="fa fa-angle-down"></i></a></li>	
                                        <li class="page_menu_item"><a href="contact">Liên hệ<i class="fa fa-angle-down"></i></a></li>	
                                    </ul>	

                                    <div class="menu_contact">	
                                        <div class="menu_contact_item"><div class="menu_contact_icon"><img src="${initParam.webResPath}images/mail_white.png" alt=""></div><a href="mailto:nhom.11.cnpm@gmail.com">nhom.11.cnpm@gmail.com</a></div>	
                                    </div>	
                                </div>	
                            </div>	
                        </div>	
                    </div>	
                </div>	
            </header>