<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- Meta Tag -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title Tag  -->
    <title>Eshop - eCommerce HTML5 Template.</title>
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="images/favicon.png">
    <!-- Web Font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
          rel="stylesheet">

    <!-- StyleSheet -->

    <!-- Bootstrap -->
    <link rel="stylesheet" href="static/user/css/bootstrap.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="static/user/css/magnific-popup.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="static/user/css/font-awesome.css">
    <!-- Fancybox -->
    <link rel="stylesheet" href="static/user/css/jquery.fancybox.min.css">
    <!-- Themify Icons -->
    <link rel="stylesheet" href="static/user/css/themify-icons.css">
    <!-- Nice Select CSS -->
    <link rel="stylesheet" href="static/user/css/niceselect.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="static/user/css/animate.css">
    <!-- Flex Slider CSS -->
    <link rel="stylesheet" href="static/user/css/flex-slider.min.css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="static/user/css/owl-carousel.css">
    <!-- Slicknav -->
    <link rel="stylesheet" href="static/user/css/slicknav.min.css">

    <!-- Eshop StyleSheet -->
    <link rel="stylesheet" href="static/user/css/reset.css">
    <link rel="stylesheet" href="static/user/style.css">
    <link rel="stylesheet" href="static/user/css/responsive.css">

    <!-- Color CSS -->
    <link rel="stylesheet" href="static/user/css/color/color1.css">
    <!--<link rel="stylesheet" href="static/user/css/color/color2.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color3.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color4.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color5.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color6.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color7.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color8.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color9.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color10.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color11.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color12.css">-->

    <link rel="stylesheet" href="#" id="colors">
    <link rel="stylesheet" href="static/user/css/my.css">

</head>
<jsp:include page="fix/header.jsp"></jsp:include>
<!-- Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="bread-inner">
                    <ul class="bread-list">
                        <li><a href="/hicommunity">Home<i class="ti-arrow-right"></i></a></li>
                        <li class="active"><a href="blog-single.jsp">Cart</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

<!-- Shopping Cart -->
<div class="shopping-cart section" style="padding: 0">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div style="float: right"><button type="button" class="btn" onclick="location.href='writeForm.do'">글쓰기 <i class="fa fa-pencil"></i></button> </div>
                <!-- Shopping Summery -->
                <table class="table shopping-summery list">
                    <thead>
                    <tr class="main-hading">
                        <th width="10%">no</th>
                        <th width="10%">카테고리</th>
                        <th width="50%">제목</th>
                        <th width="10%">작성자</th>
                        <th width="10%">등록일</th>
                        <th width="10%">조회</th>
<%--                        <th class="text-center"><i class="ti-trash remove-icon"></i></th>--%>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="text" data-title="No">1</td>
                        <td class="text" data-title="category">game1</td>
                        <td class="product-des content" data-title="Description">
                            <p class="product-des">
                                content content content content
                                content
                                content content content content content
                                content content content content contentcontent content content content content
                                content content content content contentcontent content content content content
                                content content content content contentcontent content content content content
                                content content content content contentcontent content content content content
                                content content content content contentcontent content content content content
                                content content content content contentcontent content content content content
                                content content content content contentcontent content content content content
                                content content content content contentcontent content content content content
                            </p>
                        </td>
                        <td class="price" data-title="writer">user1</td>
                        <td class="qty" data-title="date">
                            2024/01/11
                        </td>
                        <td class="total-amount" data-title="Total"><span>32</span></td>
<%--                        <td class="action" data-title="Remove"><a href="#"><i class="ti-trash remove-icon"></i></a></td>--%>
                    </tr>
                    </tbody>
                </table>
                <!--/ End Shopping Summery -->
            </div>
        </div>
    </div>
    <div class="col-12" style="padding-bottom: 3%">
        <!-- Pagination -->
        <div class="pagination center">
            <ul class="pagination-list">
                <li><a href="#"><i class="ti-arrow-left"></i></a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#"><i class="ti-arrow-right"></i></a></li>
            </ul>
        </div>
        <!--/ End Pagination -->
    </div>
</div>
    <!--/ End Shopping Cart -->


    <!-- Start Footer Area -->
    <jsp:include page="fix/footer.jsp"></jsp:include>
    <!-- /End Footer Area -->

    <!-- Jquery -->
    <script src="static/user/js/jquery.min.js"></script>
    <script src="static/user/js/jquery-migrate-3.0.0.js"></script>
    <script src="static/user/js/jquery-ui.min.js"></script>
    <!-- Popper JS -->
    <script src="static/user/js/popper.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="static/user/js/bootstrap.min.js"></script>
    <!-- Color JS -->
    <script src="static/user/js/colors.js"></script>
    <!-- Slicknav JS -->
    <script src="static/user/js/slicknav.min.js"></script>
    <!-- Owl Carousel JS -->
    <script src="static/user/js/owl-carousel.js"></script>
    <!-- Magnific Popup JS -->
    <script src="static/user/js/magnific-popup.js"></script>
    <!-- Fancybox JS -->
    <script src="static/user/js/facnybox.min.js"></script>
    <!-- Waypoints JS -->
    <script src="static/user/js/waypoints.min.js"></script>
    <!-- Countdown JS -->
    <script src="static/user/js/finalcountdown.min.js"></script>
    <!-- Nice Select JS -->
    <script src="static/user/js/nicesellect.js"></script>
    <!-- Ytplayer JS -->
    <script src="static/user/js/ytplayer.min.js"></script>
    <!-- Flex Slider JS -->
    <script src="static/user/js/flex-slider.js"></script>
    <!-- ScrollUp JS -->
    <script src="static/user/js/scrollup.js"></script>
    <!-- Onepage Nav JS -->
    <script src="static/user/js/onepage-nav.min.js"></script>
    <!-- Easing JS -->
    <script src="static/user/js/easing.js"></script>
    <!-- Active JS -->
    <script src="static/user/js/active.js"></script>
    </body>
</html>