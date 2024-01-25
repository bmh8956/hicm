<%@ page import="board.BoardDTO" %>
<%@ page import="com.fasterxml.jackson.databind.ObjectMapper" %>
<%@ page import="com.fasterxml.jackson.core.type.TypeReference" %>
<%@ page import="java.util.Map" %>
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
	<link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
	
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
<body class="js">
<jsp:include page="fix/header.jsp"></jsp:include>
<%
	BoardDTO dto = new BoardDTO();
	try {
		dto = (BoardDTO) request.getAttribute("dto");
	} catch (Exception e) {
//		e.printStackTrace();
		response.sendRedirect("404.do");
	}
%>
		<!-- Breadcrumbs -->
		<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="bread-inner">
							<ul class="bread-list">
								<li><a href="index1.html">Home<i class="ti-arrow-right"></i></a></li>
								<li class="active"><a href="blog-single.jsp">Blog Single Sidebar</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Breadcrumbs -->
			
		<!-- Start Blog Single -->
		<section class="blog-single section">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-12">
						<div class="blog-single-main">
							<div class="row">
								<div class="col-12">
									<div class="blog-detail">
										<h2 class="blog-title"><%=dto.getBd_title()%></h2>
										<div class="blog-meta">
											<span class="author"><a><i class="fa fa-user"></i>By <%=dto.getMb_id()%></a><a><i class="fa fa-calendar"></i><%=dto.getBd_regdate()%></a><a><i class="fa fa-comments"></i>Comment (15)</a></span>
										</div>
										<div class="content">
											<%=dto.getBd_content()%>
										</div>
									</div>
									<div class="share-social">
										<div class="row">
											<div class="col-12">
												<div class="content-tags">
													<h4>Tags:</h4>
													<ul class="tag-inner">
														<li><a href="#">Glass</a></li>
														<li><a href="#">Pant</a></li>
														<li><a href="#">t-shirt</a></li>
														<li><a href="#">swater</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
<%--								<div class="col-12">--%>
<%--									<div class="comments">--%>
<%--										<h3 class="comment-title">Comments (3)</h3>--%>
<%--										<!-- Single Comment -->--%>
<%--										<div class="single-comment">--%>
<%--											<img src="https://via.placeholder.com/80x80" alt="#">--%>
<%--											<div class="content">--%>
<%--												<h4>Alisa harm <span>At 8:59 pm On Feb 28, 2018</span></h4>--%>
<%--												<p>Enthusiastically leverage existing premium quality vectors with enterprise-wide innovation collaboration Phosfluorescently leverage others enterprisee  Phosfluorescently leverage.</p>--%>
<%--												<div class="button">--%>
<%--													<a href="#" class="btn"><i class="fa fa-reply" aria-hidden="true"></i>Reply</a>--%>
<%--												</div>--%>
<%--											</div>--%>
<%--										</div>--%>
<%--										<!-- End Single Comment -->--%>
<%--										<!-- Single Comment -->--%>
<%--										<div class="single-comment left">--%>
<%--											<img src="https://via.placeholder.com/80x80" alt="#">--%>
<%--											<div class="content">--%>
<%--												<h4>john deo <span>Feb 28, 2018 at 8:59 pm</span></h4>--%>
<%--												<p>Enthusiastically leverage existing premium quality vectors with enterprise-wide innovation collaboration Phosfluorescently leverage others enterprisee  Phosfluorescently leverage.</p>--%>
<%--												<div class="button">--%>
<%--													<a href="#" class="btn"><i class="fa fa-reply" aria-hidden="true"></i>Reply</a>--%>
<%--												</div>--%>
<%--											</div>--%>
<%--										</div>--%>
<%--										<!-- End Single Comment -->--%>
<%--										<!-- Single Comment -->--%>
<%--										<div class="single-comment">--%>
<%--											<img src="https://via.placeholder.com/80x80" alt="#">--%>
<%--											<div class="content">--%>
<%--												<h4>megan mart <span>Feb 28, 2018 at 8:59 pm</span></h4>--%>
<%--												<p>Enthusiastically leverage existing premium quality vectors with enterprise-wide innovation collaboration Phosfluorescently leverage others enterprisee  Phosfluorescently leverage.</p>--%>
<%--												<div class="button">--%>
<%--													<a href="#" class="btn"><i class="fa fa-reply" aria-hidden="true"></i>Reply</a>--%>
<%--												</div>--%>
<%--											</div>--%>
<%--										</div>--%>
<%--										<!-- End Single Comment -->--%>
<%--									</div>									--%>
<%--								</div>											--%>
<%--								<div class="col-12">			--%>
<%--									<div class="reply">--%>
<%--										<div class="reply-head">--%>
<%--											<h2 class="reply-title">Leave a Comment</h2>--%>
<%--											<!-- Comment Form -->--%>
<%--											<form class="form" action="#">--%>
<%--												<div class="row">--%>
<%--													<div class="col-lg-6 col-md-6 col-12">--%>
<%--														<div class="form-group">--%>
<%--															<label>Your Name<span>*</span></label>--%>
<%--															<input type="text" name="name" placeholder="" required="required">--%>
<%--														</div>--%>
<%--													</div>--%>
<%--													<div class="col-lg-6 col-md-6 col-12">--%>
<%--														<div class="form-group">--%>
<%--															<label>Your Email<span>*</span></label>--%>
<%--															<input type="email" name="email" placeholder="" required="required">--%>
<%--														</div>--%>
<%--													</div>--%>
<%--													<div class="col-12">--%>
<%--														<div class="form-group">--%>
<%--															<label>Your Message<span>*</span></label>--%>
<%--															<textarea name="message" placeholder=""></textarea>--%>
<%--														</div>--%>
<%--													</div>--%>
<%--													<div class="col-12">--%>
<%--														<div class="form-group button">--%>
<%--															<button type="submit" class="btn">Post comment</button>--%>
<%--														</div>--%>
<%--													</div>--%>
<%--												</div>--%>
<%--											</form>--%>
<%--											<!-- End Comment Form -->--%>
<%--										</div>--%>
<%--									</div>			--%>
<%--								</div>			--%>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-12">
						<div class="main-sidebar">
							<div class="image">
								<%
									String img = dto.getBd_img();
									ObjectMapper om = new ObjectMapper();
									TypeReference<Map<String, Object>> tr = new TypeReference<Map<String, Object>>(){};
									Map<String, Object> map = om.readValue(img, tr);
								%>
								<img src="<%=map.get("file_path")%>" alt="#">
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/ End Blog Single -->
			
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