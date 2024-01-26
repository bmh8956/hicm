<%@ page import="category.CategoryDTO" %>
<%@ page import="category.CategoryDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="board.BoardDTO" %>
<%@ page import="board.BoardDAO" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.fasterxml.jackson.databind.ObjectMapper" %>
<%@ page import="com.fasterxml.jackson.core.type.TypeReference" %>
<%@ page import="java.util.HashMap" %>
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
<style>
    .card-body {
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 7;
        overflow: hidden;
    }
</style>
</head>
<jsp:include page="fix/header.jsp"></jsp:include>
<!-- Start Product Area -->
<div class="product-area section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h2>NEW</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="product-info">
                    <div class="nav-main">
                        <!-- Tab Nav -->
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <%
                                List<CategoryDTO> main = CategoryDAO.get_list();
								int i = 0;
                                for (CategoryDTO ctm : main) {
                            %>
                            <li class="nav-item"><a class="nav-link <%=(i == 0)? "active" : ""%>" data-toggle="tab" href="#<%=ctm.getCt_name()%>"
                                                    role="tab"><%=ctm.getCt_name()%>
                            </a></li>
                            <%
                                    i++;
                                }
                            %>
                        </ul>
                        <!--/ End Tab Nav -->
                    </div>
                    <div class="tab-content" id="myTabContent">
                        <!-- Start Single Tab -->
                        <%
                            int j = 0;
                            for(CategoryDTO ctm : main) {
                        %>
                        <div class="tab-pane fade show <%=(j == 0)? "active" : "" %>" id="<%=ctm.getCt_name()%>" role="tabpanel">
                            <div class="tab-single">
                                <div class="row">
                                    <%
                                        BoardDTO board = new BoardDTO();
										board.setCt_seq(ctm.getCt_seq());
                                        List<BoardDTO> bd_list = BoardDAO.main_list(board);
										for(BoardDTO bd : bd_list) {
                                            String img = bd.getBd_img();
                                            Map<String, Object> map = new HashMap<>();
											if(img != null) {
                                                ObjectMapper om = new ObjectMapper();
                                                TypeReference<Map<String, Object>> tr = new TypeReference<Map<String, Object>>() {
                                                };
                                                map = om.readValue(img, tr);
                                            }
                                    %>
                                    <div class="col-xl-3 col-lg-4 col-md-4 col-12 main_list">
                                        <div class="card card-small card-post h-100">
                                            <div class="card-post__image" style="background-image: url('<%=(!map.isEmpty())? map.get("file_path") : "static/user/images/noimg.png" %>');"></div>
                                            <div class="card-body">
                                                <h5 class="card-title">
                                                    <a class="text-fiord-blue" href="getBoard.do?bd_seq=<%=bd.getBd_seq()%>"><%=bd.getBd_title()%></a>
                                                </h5>
                                                <p class="card-text"><%=bd.getBd_content()%></p>
                                            </div>
                                            <div class="card-footer text-muted border-top py-3">
                                                <span class="d-inline-block">By
                                                  <a class="text-fiord-blue" href="#"><%=bd.getMb_id()%></a>
<%--                                                  <a class="text-fiord-blue" href="#">News</a>--%>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                        <!--/ End Single Tab -->
                        <%j++;
                            }
                        %>
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