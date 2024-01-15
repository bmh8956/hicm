<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2024-01-09
  Time: 오후 3:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body class="js">

<!-- Preloader -->
<div class="preloader">
    <div class="preloader-inner">
        <div class="preloader-icon">
            <span></span>
            <span></span>
        </div>
    </div>
</div>
<!-- End Preloader -->

<!-- Eshop Color Plate -->
<div class="color-plate ">
    <a class="color-plate-icon"><i class="ti-paint-bucket"></i></a>
    <h4>Eshop Colors</h4>
    <p>Here is some awesome color's available on Eshop Template.</p>
    <span class="color1"></span>
    <span class="color2"></span>
    <span class="color3"></span>
    <span class="color4"></span>
    <span class="color5"></span>
    <span class="color6"></span>
    <span class="color7"></span>
    <span class="color8"></span>
    <span class="color9"></span>
    <span class="color10"></span>
    <span class="color11"></span>
    <span class="color12"></span>
</div>
<!-- /End Color Plate -->

<!-- Header -->
<header class="header shop v3">
    <div class="topbar">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-12">
                    <!-- Top Left -->
                    <div class="top-left">

                    </div>
                    <!--/ End Top Left -->
                </div>
                <div class="col-lg-8 col-md-12 col-12">
                    <!-- Top Right -->
                    <div class="right-content">
                        <ul class="list-main">
                            <li><i class="fa fa-heart-o"></i> <a href="#">종아요</a></li>
                            <li><i class="ti-user"></i> <a href="#">내 정보</a></li>
                            <li><i class="fa fa-user-plus"></i><a href="joinForm.do">회원가입</a></li>
                            <li><i class="ti-power-off"></i><a href="loginForm.do">로그인</a></li>
                        </ul>
                    </div>
                    <!-- End Top Right -->
                </div>
            </div>
        </div>
    </div>
    <div class="middle-inner">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-12">
                    <!-- Logo -->
                    <div class="logo">
                        <a href="/hicommunity"><img src="static/user/images/logo.png" alt="logo"></a>
                    </div>
                    <!--/ End Logo -->
                    <!-- Search Form -->
                    <div class="search-top">
                        <div class="top-search"><a href="#0"><i class="ti-search"></i></a></div>
                        <!-- Search Form -->
                        <div class="search-top">
                            <form class="search-form">
                                <input type="text" placeholder="Search here..." name="search">
                                <button value="search" type="submit"><i class="ti-search"></i></button>
                            </form>
                        </div>
                        <!--/ End Search Form -->
                    </div>
                    <!--/ End Search Form -->
                    <div class="mobile-nav"></div>
                </div>
                <div class="col-lg-8 col-md-7 col-12">
                    <div class="search-bar-top">
                        <div class="search-bar">
                            <select>
                                <option selected="selected">All Category</option>
                                <option>watch</option>
                                <option>mobile</option>
                                <option>kid’s item</option>
                            </select>
                            <form>
                                <input name="search" placeholder="Search Products Here....." type="search">
                                <button class="btnn"><i class="ti-search"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-12">
                    <div class="right-bar">
                        <!-- Search Form -->
<%--                        <div class="sinlge-bar">--%>
<%--                            <a href="#" class="single-icon"><i class="fa fa-heart-o" aria-hidden="true"></i></a>--%>
<%--                        </div>--%>
<%--                        <div class="sinlge-bar">--%>
<%--                            <a href="#" class="single-icon"><i class="fa fa-user-circle-o" aria-hidden="true"></i></a>--%>
<%--                        </div>--%>
                        <%
                            if(false) {
                        %>
                            <div class="sinlge-bar">
                                <button class="my_content">내 글목록 <i class="fa fa-list"></i></button>
                            </div>
                        <%
                            } else  {
                        %>
                            <div class="sinlge-bar">
                                <button class="my_content">글쓰기 <i class="fa fa-pencil"></i></button>
                            </div>
                        <%
                            }
                        %>
<%--                        <div class="sinlge-bar">--%>
<%--                            <button class="my_content">내 글목록<i class="fa fa-list"></i></button>--%>
<%--                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- Header Inner -->
    <div class="header-inner">
        <div class="container">
            <div class="cat-nav-head">
                <div class="row">
                    <div class="col-12">
                        <div class="menu-area">
                            <!-- Main Menu -->
                            <nav class="navbar navbar-expand-lg">
                                <div class="navbar-collapse">
                                    <div class="nav-inner">
                                        <ul class="nav main-menu menu navbar-nav">
                                            <li>
                                                <a href="list.do?1depth=1">게임</a>
                                                <ul class="dropdown">
                                                    <li>
                                                        <a href="blog-grid.jsp">Blog Grid</a>
                                                    </li>
                                                    <li><a href="list.do?2depth=10">Blog Grid Sidebar</a></li>
                                                    <li><a href="blog-single.jsp">Blog Single</a></li>
                                                    <li><a href="blog-single-sidebar.jsp">Blog Single Sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="contact.jsp?ctSeq=2">스포츠</a>
                                                <ul class="dropdown">
                                                    <li><a href="blog-grid.jsp">Blog Grid</a></li>
                                                    <li><a href="blog-grid-sidebar.jsp">Blog Grid Sidebar</a></li>
                                                    <li><a href="blog-single.jsp">Blog Single</a></li>
                                                    <li><a href="blog-single-sidebar.jsp">Blog Single Sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="contact.jsp?ctSeq=3">요리</a>
                                                <ul class="dropdown">
                                                    <li><a href="blog-grid.jsp">Blog Grid</a></li>
                                                    <li><a href="blog-grid-sidebar.jsp">Blog Grid Sidebar</a></li>
                                                    <li><a href="blog-single.jsp">Blog Single</a></li>
                                                    <li><a href="blog-single-sidebar.jsp">Blog Single Sidebar</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                            <!--/ End Main Menu -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ End Header Inner -->
</header>
<!--/ End Header -->