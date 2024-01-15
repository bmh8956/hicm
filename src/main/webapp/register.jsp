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
	
</head>
	<jsp:include page="fix/header.jsp"></jsp:include>
		<!-- Breadcrumbs -->
		<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="bread-inner">
							<ul class="bread-list">
								<li><a href="index1.html">Home<i class="ti-arrow-right"></i></a></li>
								<li class="active"><a href="blog-single.jsp">Register</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Breadcrumbs -->
				
		<!-- Shop Login -->
		<section class="shop login section">
			<div class="container">
				<div class="row"> 
					<div class="col-lg-6 offset-lg-3 col-12">
						<div class="login-form">
							<h2>Register</h2>
							<p>Please register in order to checkout more quickly</p>
							<!-- Form -->
							<form class="form" method="post" action="/join.do">
								<div class="row">
									<div class="col-12">
										<div class="form-group">
											<label>ID<span>*</span></label>
											<input type="text" name="mb_id" placeholder="" required="required">
										</div>
									</div>
									<div class="col-12">
										<div class="form-group">
											<label>비밀번호<span>*</span></label>
											<input type="password" name="mb_pw" placeholder="" required="required">
										</div>
									</div>
									<div class="col-12">
										<div class="form-group">
											<label>비밀번호 확인<span>*</span></label>
											<input type="password" name="mb_pw_check" placeholder="" required="required">
										</div>
									</div>
									<div class="col-12">
										<div class="form-group">
											<label>이름<span>*</span></label>
											<input type="text" name="mb_name" placeholder="" required="required">
										</div>
									</div>
									<div class="col-12">
										<div class="form-group">
											<label>Email<span>*</span></label>
											<input type="email" name="mb_email" placeholder="" required="required">
										</div>
									</div>
									<div class="col-12">
										<div class="form-group">
											<label>생년월일<span>*</span></label>
											<input type="text" name="mb_birth" id="datepicker1" placeholder="" required="required" readonly>
										</div>
									</div>
									<div class="col-12">
										<div class="form-group">
											<label>이미지<span>*</span></label>
											<input type="file" name="img" id="img" placeholder="" required="required" style="height: 100%">
											<input type="hidden" name="mb_img">
										</div>
									</div>
									<div class="col-12">
										<div class="form-group login-btn">
											<button class="btn" type="submit">Register</button>
											<a href="login.jsp" class="btn">Login</a>
										</div>
									</div>
								</div>
							</form>
							<!--/ End Form -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/ End Login -->
		<jsp:include page="fix/footer.jsp"></jsp:include>
		
	<!-- Jquery -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<%--    <script src="static/user/js/jquery.min.js"></script>--%>
<%--    <script src="static/user/js/jquery-migrate-3.0.0.js"></script>--%>
<%--	<script src="static/user/js/jquery-ui.min.js"></script>--%>
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
	<!-- datepicker -->
	<script src="static/user/js/datepicker.js"></script>
<script>
	$(function () {
		$("#datepicker1").datepicker();
	})
</script>
</body>
</html>