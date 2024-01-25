<%@ page import="category.CategoryDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="category.CategoryDAO" %>
<%@ page import="member.MemberDTO" %><%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2024-01-09
  Time: 오후 3:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    MemberDTO user = new MemberDTO();
    try {
        user = (MemberDTO) session.getAttribute("user");
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
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
                            <%
                                if (user == null) {
                            %>
                            <li><i class="fa fa-user-plus"></i><a href="joinForm.do">회원가입</a></li>
                            <li><i class="ti-power-off"></i><a href="loginForm.do">로그인</a></li>
                            <%
                            } else {
                            %>
                            <li><i class="fa fa-heart-o"></i> <a href="#">종아요</a></li>
                            <li><i class="ti-user"></i> <a href="#">내 정보</a></li>
                            <li><i class="fa-sign-out"></i><a href="javascript:logOut();">로그아웃</a></li>
                            <%
                                }
                            %>
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
                                <%
                                    List<CategoryDTO> ct_list = new ArrayList<>();
                                    try {
                                        ct_list = CategoryDAO.get_list();
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>
                                <option selected="selected">All Category</option>
                                <%
                                    if (!ct_list.isEmpty()) {
                                        for (CategoryDTO dto : ct_list) {
                                %>
                                <option><%=dto.getCt_name()%></option>
                                <%
                                        }
                                    }
                                %>
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
                            if (user != null) {
                        %>
                        <div class="sinlge-bar">
                            <button class="my_content" onclick="location.href='list.do?list_type=my'">내 글목록 <i class="fa fa-list"></i></button>
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
                                            <%
                                                List<CategoryDTO> list = new ArrayList<>();
                                                try {
//                                                    list = (List<CategoryDTO>) request.getAttribute("cate_list");
                                                    list = CategoryDAO.get_list();
                                                } catch (Exception e) {
                                                    e.printStackTrace();
                                                }
                                                if (list.isEmpty()) {
                                            %>
                                            <li>
                                                <a href="#">게시판 이용 불가</a>
                                            </li>
                                            <%
                                            } else {
                                                for (CategoryDTO dto : list) {
                                            %>
                                            <li>
                                                <a href="list.do?depth=1&ct_seq=<%=dto.getCt_seq()%>&list_type=list&ct_name=<%=dto.getCt_name()%>"
                                                   class="main_category" id="<%=dto.getCt_seq()%>"><%=dto.getCt_name()%>
                                                </a>
                                                <%
                                                    List<CategoryDTO> sList = new ArrayList<>();
                                                    try {
                                                        CategoryDTO dto1 = new CategoryDTO();
                                                        dto1.setCt_parent(dto.getCt_seq());
                                                        sList = CategoryDAO.get_list_sub(dto1);
                                                    } catch (Exception e) {

                                                    }
                                                    if (!sList.isEmpty()) {
                                                %>

                                                <ul class="dropdown">
                                                    <%
                                                        for (CategoryDTO sub : sList) {
                                                    %>
                                                    <li>
                                                        <a href="list.do?depth=2&ct_seq=<%=sub.getCt_seq()%>&list_type=list&ct_name=<%=sub.getCt_name()%>&depth_p=1&ct_seq_p=<%=dto.getCt_seq()%>&ct_name_p=<%=dto.getCt_name()%>"><%=sub.getCt_name()%>
                                                        </a>
                                                    </li>
                                                    <%
                                                        }
                                                    %>
                                                </ul>
                                                <%
                                                    }
                                                %>
                                            </li>
                                            <%
                                                    }
                                                }
                                            %>
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
    <script>
        let logOut = () => {
            $.ajax({
                type: "POST",
                url: "logout.do",
                success: function (res) {
                    if (typeof res === 'string') {
                        res = JSON.parse(res)
                    }
                    if (res.msg === 'success') {
                        location.reload();
                    } else {

                    }
                }
            });
        }
    </script>
</header>
<!--/ End Header -->