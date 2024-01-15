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
<!-- Start Product Area -->
<div class="product-area section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h2>관리자 인증 게시물</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="product-info">
                    <div class="nav-main">
                        <!-- Tab Nav -->
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#man"
                                                    role="tab">Man</a></li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab"
                                                    href="#women"
                                                    role="tab">Woman</a></li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#kids" role="tab">Kids</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#accessories" role="tab">Accessories</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#essential" role="tab">Essential</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#prices"
                                                    role="tab">Prices</a></li>
                        </ul>
                        <!--/ End Tab Nav -->
                    </div>
                    <div class="tab-content" id="myTabContent">
                        <!-- Start Single Tab -->
                        <div class="tab-pane fade show active" id="man" role="tabpanel">
                            <div class="tab-single">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="product-details.html">
                                                    <img class="default-img"
                                                         src="https://via.placeholder.com/550x750" alt="#">
                                                    <img class="hover-img"
                                                         src="https://via.placeholder.com/550x750" alt="#">
                                                </a>
                                                <div class="button-head">
                                                    <div class="product-action">
                                                        <a data-toggle="modal" data-target="#exampleModal"
                                                           title="Quick View" href="#"><i
                                                                class=" ti-eye"></i><span>Quick Shop</span></a>
                                                        <a title="Wishlist" href="#"><i
                                                                class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                        <a title="Compare" href="#"><i
                                                                class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                    </div>
                                                    <div class="product-action-2">
                                                        <a title="Add to cart" href="#">Add to cart</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h3><a href="product-details.html">Women Hot Collection</a></h3>
                                                <div class="product-price">
                                                    <span>$29.00</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="product-details.html">
                                                    <img class="default-img"
                                                         src="https://via.placeholder.com/550x750" alt="#">
                                                    <img class="hover-img"
                                                         src="https://via.placeholder.com/550x750" alt="#">
                                                </a>
                                                <div class="button-head">
                                                    <div class="product-action">
                                                        <a data-toggle="modal" data-target="#exampleModal"
                                                           title="Quick View" href="#"><i
                                                                class=" ti-eye"></i><span>Quick Shop</span></a>
                                                        <a title="Wishlist" href="#"><i
                                                                class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                        <a title="Compare" href="#"><i
                                                                class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                    </div>
                                                    <div class="product-action-2">
                                                        <a title="Add to cart" href="#">Add to cart</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h3><a href="product-details.html">Women Hot Collection</a></h3>
                                                <div class="product-price">
                                                    <span>$29.00</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card card-small card-post h-100">
                                        <div class="card-post__image"
                                             style="background-image: url('static/images/content-management/7.jpeg');"></div>
                                        <div class="card-body">
                                            <h5 class="card-title">
                                                <a class="text-fiord-blue" href="#">Extremity so attending objection as
                                                    engrossed</a>
                                            </h5>
                                            <p class="card-text">Morning prudent removal an letters by. On could my in
                                                order never it. Or excited certain sixteen it to parties colonel not
                                                seeing...</p>
                                        </div>
                                        <div class="card-footer text-muted border-top py-3">
                    <span class="d-inline-block">By
                      <a class="text-fiord-blue" href="#">Alene Trenton</a> in
                      <a class="text-fiord-blue" href="#">News</a>
                    </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/ End Single Tab -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Product Area -->
<jsp:include page="fix/footer.jsp"></jsp:include>

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