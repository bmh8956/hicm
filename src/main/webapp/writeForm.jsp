<%@ page import="category.CategoryDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="category.CategoryDAO" %>
<%@ page import="member.MemberDTO" %>
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
<%--	<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>--%>
	<script src="https://cdn.tiny.cloud/1/62zv596fx8u6gixu2wpvvm12vvi0n9za1ke1m5pdq8hn3ldp/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
	<script src="tiny.js"></script>
	<style>
		.cate_sel + .nice-select {
			float: none;
		}
		.cate_sel + .nice-select .list {
			width: 100%;
		}
		.thumbn {
			width: 265px;
			height: 165px;
			border: 1px solid;
			margin-top: 10%;
			position: relative;
			min-height: 10.3125rem;
			border-top-left-radius: 0.625rem;
			border-top-right-radius: 0.625rem;
			background-size: cover;
			background-position: center;
			background-repeat: no-repeat;
		}
	</style>
	
</head>
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
		<jsp:include page="fix/header.jsp"></jsp:include>
		<!--/ End Header -->
	
	<!-- Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="bread-inner">
						<ul class="bread-list">
							<li><a href="index1.html">Home<i class="ti-arrow-right"></i></a></li>
							<li class="active"><a href="blog-single.jsp">Contact</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Breadcrumbs -->
	<%
		MemberDTO user = (MemberDTO) session.getAttribute("user");
	%>
  
	<!-- Start Contact -->
	<section id="contact-us" class="contact-us section">
		<div class="container">
				<div class="contact-head">
					<div class="row">
						<div class="col-lg-8 col-12">
							<div class="form-main">
								<div class="title">
									<h4>[<%=user.getMb_name()%>] 님</h4>
									<h3>게시글 작성</h3>
								</div>
								<form class="form" method="post" action="" id="frm" enctype="multipart/form-data">
									<div class="row">
										<div class="col-lg-6 col-12">
											<div class="form-group">
												<label>제목<span>*</span></label>
												<input name="bd_title" type="text" placeholder="" required>
											</div>
										</div>
										<div class="col-lg-6 col-12">
											<div class="form-group">
												<label>작성자<span>*</span></label>
												<input name="mb_id" type="text" placeholder="" readonly value="<%=user.getMb_id()%>" required>
												<input type="hidden" name="mb_seq" value="<%=user.getMb_seq()%>">
											</div>
										</div>
										<div class="col-lg-6 col-12">
											<div class="form-group">
												<label>카테고리<span>*</span></label>
												<select class="cate_sel _main" id="main_cate" name="depth_1">
													<%
														List<CategoryDTO> ct_list = CategoryDAO.get_list();
														for(CategoryDTO ct : ct_list) {
													%>
													<option value="<%=ct.getCt_seq()%>"><%=ct.getCt_name()%></option>
													<%
														}
													%>
												</select>
												<select class="cate_sel" id="sub_cate" name="depth_2">
													<option value="">sub</option>
												</select>
											</div>
										</div>
										<div class="col-lg-6 col-12">
											<div class="form-group">
												<label>이미지<span>*</span></label>
												<input name="file_name" type="text" id="file_name" placeholder="" readonly onclick="document.getElementById('img').click();">
												<input type="file" style="display: none" name="img" id="img" accept="image/*">
												<input type="text" style="display: none" name="bd_img" id="bd_img">
											</div>
										</div>
										<div class="col-12">
											<div class="form-group message">
												<label>내용<span>*</span></label>
												<textarea name="bd_content" id="content" cols="30" rows="10"></textarea>
											</div>
										</div>
										<div class="col-12">
											<div class="form-group button">
												<button type="submit" class="btn" id="btn">등록</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="col-lg-4 col-12">
							<div class="single-head">
								<div class="single-info">
									<h6>이미지 미리보기</h6>
									<div class="thumbn">

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	<!--/ End Contact -->
	
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
	<!-- Jquery Counterup JS -->
	<script src="static/user/js/jquery-counterup.min.js"></script>
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
	<!-- Google Map JS -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnhgNBg6jrSuqhTeKKEFDWI0_5fZLx0vM"></script>	
	<script src="static/user/js/gmap.min.js"></script>
	<script src="static/user/js/map-script.js"></script>
	<!-- Active JS -->
	<script src="static/user/js/active.js"></script>
<script>

	let get_sub_cate = (par) => {
		let html = '';
		let html2 = '';
		if(!par) {
			html = '<option value="0">등록된 카테고리가 없습니다.</option>';
			document.getElementById("sub_cate").innerHTML = html;
			return
		}
		$.ajax({
		        type: "post",
		        url: "getSub.adm",
		        data: {
					ct_seq : par
				},
		        success: function (res) {
					if(typeof res === 'string') {
					    res = JSON.parse(res)
					}
					console.log(res)
					let index = 0;
					if(res.msg === 'success') {
						for(let ct of res.list) {
							html += '<option value="'+ ct.ct_seq +'">'+ ct.ct_name +'</option>';
							html2 += '<li data-value="'+ ct.ct_seq +'" class="option selected focus">'+ ct.ct_name +'</li>'
							if(index == 0) {
								document.querySelector("#sub_cate + .nice-select span").textContent = ct.ct_name;
							}
							index++;
						}
						document.getElementById('sub_cate').innerHTML = html;
						document.querySelector("#sub_cate + .nice-select ul").innerHTML = html2;
					} else {

					}
		        }
		    });
	}

	let insert = () => {
		let frm = document.getElementById("frm");
		let fmd = new FormData(frm);
		fmd.set("bd_content", tinymce.get("content").getContent())
		// fmd.append("bd_content", tinymce.get("content").getContent())
		let obj = {}
		for(let k of fmd.keys()) {
			obj[k] = fmd.get(k);
		}
		fmd.set("ct_seq", obj['depth_2']);
		console.log(obj)

		$.ajax({
		        type: "post",
		        url: "boardInsert.fi",
		        data: fmd,
				processData:false, // 멀티파트폼으로 보내기위해서 설정
				contentType:false, // 멀티파트폼으로 보내기위해서 설정
		        success: function (res) {
					console.log(res)
					if(typeof res === 'string') {
					    res = JSON.parse(res)
					}
					// console.log(res)
					if(res.msg === 'success') {
						alert("게시글이 등록되었습니다.")
						location.href = "list.do?list_type=my";
					} else {

					}
		        }
		    });
	}

	let li_value = (opt) => {
		let main_opt = document.querySelectorAll(".nice-select._main li");
		let num = 0;
		let idx = 0;
		for(let mo of main_opt) {
			if(mo === opt) {
				idx = num;
			}
			num++;
		}
		// console.log(main_opt[idx].getAttribute('data-value'))
		get_sub_cate(main_opt[idx].getAttribute('data-value'))
	}

	let thumb = (e) => {
		let reader = new FileReader();

		reader.onload = function (e) {
			let tm = document.querySelector(".thumbn")
			tm.style.backgroundImage = 'url(' + e.target.result + ')';
		}
		reader.readAsDataURL(e.target.files[0])
	}

	window.onload = () => {
		let main_opt = document.querySelectorAll(".nice-select._main li");
		get_sub_cate(main_opt[0].getAttribute('data-value'))
		for(let opt of main_opt) {
			opt.addEventListener('click', function (e) {
				li_value(e.target);
			})
		}

		document.getElementById("img").addEventListener("change", function (e) {
			thumb(e)
			document.getElementById("bd_img").value = e.target.files[0].name
			document.getElementById("file_name").value = e.target.files[0].name
			// console.log(document.getElementById("mb_img").value)
		})

		// document.getElementById("main_cate").addEventListener("change", function (e) {
		// 	console.log(e.target.value)
		// 	get_sub_cate(e.target.value);
		// })

		document.getElementById("frm").addEventListener('submit', function (e) {
			e.preventDefault();
			insert();
		})
		// document.getElementById("sub_cate").addEventListener("change", function () {
		//
		// })
	}
</script>
</body>
</html>