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
	<!-- Jquery Ui -->
    <link rel="stylesheet" href="static/user/css/jquery-ui.css">
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
<body class="js">
<jsp:include page="fix/header.jsp"></jsp:include>
		<!-- Product Style 1 -->
		<section class="product-area shop-sidebar shop-list shop section">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-4 col-12">
						<div class="shop-sidebar">
								<!-- Single Widget -->
								<div class="single-widget category">
									<h3 class="title">Categories</h3>
									<ul class="categor-list">
										<li><a href="#">T-shirts</a></li>
										<li><a href="#">jacket</a></li>
										<li><a href="#">jeans</a></li>
										<li><a href="#">sweatshirts</a></li>
										<li><a href="#">trousers</a></li>
										<li><a href="#">kitwears</a></li>
										<li><a href="#">accessories</a></li>
									</ul>
								</div>
								<!--/ End Single Widget -->
								<!-- Shop By Price -->
									<div class="single-widget range">
										<h3 class="title">Shop by Price</h3>
										<div class="price-filter">
											<div class="price-filter-inner">
												<div id="slider-range"></div>
													<div class="price_slider_amount">
													<div class="label-input">
														<span>Range:</span><input type="text" id="amount" name="price" placeholder="Add Your Price"/>
													</div>
												</div>
											</div>
										</div>
										<ul class="check-box-list">
											<li>
												<label class="checkbox-inline" for="1"><input name="news" id="1" type="checkbox">$20 - $50<span class="count">(3)</span></label>
											</li>
											<li>
												<label class="checkbox-inline" for="2"><input name="news" id="2" type="checkbox">$50 - $100<span class="count">(5)</span></label>
											</li>
											<li>
												<label class="checkbox-inline" for="3"><input name="news" id="3" type="checkbox">$100 - $250<span class="count">(8)</span></label>
											</li>
										</ul>
									</div>
									<!--/ End Shop By Price -->
								<!-- Single Widget -->
								<div class="single-widget recent-post">
									<h3 class="title">Recent post</h3>
									<!-- Single Post -->
									<div class="single-post first">
										<div class="image">
											<img src="https://via.placeholder.com/75x75" alt="#">
										</div>
										<div class="content">
											<h5><a href="#">Girls Dress</a></h5>
											<p class="price">$99.50</p>
											<ul class="reviews">
												<li class="yellow"><i class="ti-star"></i></li>
												<li class="yellow"><i class="ti-star"></i></li>
												<li class="yellow"><i class="ti-star"></i></li>
												<li><i class="ti-star"></i></li>
												<li><i class="ti-star"></i></li>
											</ul>
										</div>
									</div>
									<!-- End Single Post -->
									<!-- Single Post -->
									<div class="single-post first">
										<div class="image">
											<img src="https://via.placeholder.com/75x75" alt="#">
										</div>
										<div class="content">
											<h5><a href="#">Women Clothings</a></h5>
											<p class="price">$99.50</p>
											<ul class="reviews">
												<li class="yellow"><i class="ti-star"></i></li>
												<li class="yellow"><i class="ti-star"></i></li>
												<li class="yellow"><i class="ti-star"></i></li>
												<li class="yellow"><i class="ti-star"></i></li>
												<li><i class="ti-star"></i></li>
											</ul>
										</div>
									</div>
									<!-- End Single Post -->
									<!-- Single Post -->
									<div class="single-post first">
										<div class="image">
											<img src="https://via.placeholder.com/75x75" alt="#">
										</div>
										<div class="content">
											<h5><a href="#">Man Tshirt</a></h5>
											<p class="price">$99.50</p>
											<ul class="reviews">
												<li class="yellow"><i class="ti-star"></i></li>
												<li class="yellow"><i class="ti-star"></i></li>
												<li class="yellow"><i class="ti-star"></i></li>
												<li class="yellow"><i class="ti-star"></i></li>
												<li class="yellow"><i class="ti-star"></i></li>
											</ul>
										</div>
									</div>
									<!-- End Single Post -->
								</div>
								<!--/ End Single Widget -->
								<!-- Single Widget -->
								<div class="single-widget category">
									<h3 class="title">Manufacturers</h3>
									<ul class="categor-list">
										<li><a href="#">Forever</a></li>
										<li><a href="#">giordano</a></li>
										<li><a href="#">abercrombie</a></li>
										<li><a href="#">ecko united</a></li>
										<li><a href="#">zara</a></li>
									</ul>
								</div>
								<!--/ End Single Widget -->
						</div>
					</div>
					<div class="col-lg-9 col-md-8 col-12">
						<div class="row">
							<div class="col-12">
								<!-- Shop Top -->
								<div class="shop-top">
									<div class="shop-shorter">
										<div class="single-shorter">
											<label>Show :</label>
											<select>
												<option selected="selected">09</option>
												<option>15</option>
												<option>25</option>
												<option>30</option>
											</select>
										</div>
										<div class="single-shorter">
											<label>Sort By :</label>
											<select>
												<option selected="selected">Name</option>
												<option>Price</option>
												<option>Size</option>
											</select>
										</div>
									</div>
									<ul class="view-mode">
										<li><a href="shop-grid.jsp"><i class="fa fa-th-large"></i></a></li>
										<li class="active"><a href="shop-list.html"><i class="fa fa-th-list"></i></a></li>
									</ul>
								</div>
								<!--/ End Shop Top -->
							</div>
						</div>
						<div class="row">
								<!-- Start Single List -->
								<div class="col-12">
									<div class="row">
										<div class="col-lg-4 col-md-6 col-sm-6">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.html">
														<img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
														<img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
															<a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
															<a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-8 col-md-6 col-12">
											<div class="list-content">
												<div class="product-content">
													<div class="product-price">
														<span>$29.00</span>
													</div>
													<h3 class="title"><a href="product-details.html">Women hot collection</a></h3>
													<div class="review-inner">
														<div class="ratings">
															<ul class="rating">
																<li><i class="fa fa-star"></i></li>
																<li><i class="fa fa-star"></i></li>
																<li><i class="fa fa-star"></i></li>
																<li><i class="fa fa-star"></i></li>
																<li><i class="fa fa-star-half-o"></i></li>
																<li class="total">(4.5)</li>
															</ul>
														</div>
													</div>
												</div>
												<p class="des">nteger enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum.  Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis We are creative company here are many variation generators on the Internet tend to chunks as necessary interdum</p>
												<a href="#" class="btn">But Now!</a>
											</div>
										</div>
									</div>
								</div>
								<!-- End Single List -->
								<!-- Start Single List -->
								<div class="col-12">
									<div class="row">
										<div class="col-lg-4 col-md-6 col-sm-6">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.html">
														<img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
														<img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
															<a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
															<a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-8 col-md-6 col-12">
											<div class="list-content">
												<div class="product-content">
													<div class="product-price">
														<span>$29.00</span>
													</div>
													<h3 class="title"><a href="product-details.html">Women hot collection</a></h3>
													<div class="review-inner">
														<div class="ratings">
															<ul class="rating">
																<li><i class="fa fa-star"></i></li>
																<li><i class="fa fa-star"></i></li>
																<li><i class="fa fa-star"></i></li>
																<li><i class="fa fa-star"></i></li>
																<li><i class="fa fa-star-half-o"></i></li>
																<li class="total">(4.5)</li>
															</ul>
														</div>
													</div>
												</div>
												<p class="des">nteger enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum.  Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis We are creative company here are many variation generators on the Internet tend to chunks as necessary interdum</p>
												<a href="#" class="btn">But Now!</a>
											</div>
										</div>
									</div>
								</div>
								<!-- End Single List -->
								<!-- Start Single List -->
								<div class="col-12">
									<div class="row">
										<div class="col-lg-4 col-md-6 col-sm-6">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.html">
														<img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
														<img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
														<span class="price-dec">30% Off</span>
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
															<a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
															<a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-8 col-md-6 col-12">
											<div class="list-content">
												<div class="product-content">
													<div class="product-price">
														<span>$29.00</span>
													</div>
													<h3 class="title"><a href="product-details.html">Women hot collection</a></h3>
													<div class="review-inner">
														<div class="ratings">
															<ul class="rating">
																<li><i class="fa fa-star"></i></li>
																<li><i class="fa fa-star"></i></li>
																<li><i class="fa fa-star"></i></li>
																<li><i class="fa fa-star"></i></li>
																<li><i class="fa fa-star-half-o"></i></li>
																<li class="total">(4.5)</li>
															</ul>
														</div>
													</div>
												</div>
												<p class="des">nteger enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum.  Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis We are creative company here are many variation generators on the Internet tend to chunks as necessary interdum</p>
												<a href="#" class="btn">But Now!</a>
											</div>
										</div>
									</div>
								</div>
								<!-- End Single List -->
								<!-- Start Single List -->
								<div class="col-12">
									<div class="row">
										<div class="col-lg-4 col-md-6 col-sm-6">
											<div class="single-product">
												<div class="product-img">
													<a href="product-details.html">
														<img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
														<img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
														<span class="out-of-stock">Hot</span>
													</a>
													<div class="button-head">
														<div class="product-action">
															<a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
															<a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
															<a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
														</div>
														<div class="product-action-2">
															<a title="Add to cart" href="#">Add to cart</a>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-8 col-md-6 col-12">
											<div class="list-content">
												<div class="product-content">
													<div class="product-price">
														<span>$29.00</span>
													</div>
													<h3 class="title"><a href="product-details.html">Women hot collection</a></h3>
													<div class="review-inner">
														<div class="ratings">
															<ul class="rating">
																<li><i class="fa fa-star"></i></li>
																<li><i class="fa fa-star"></i></li>
																<li><i class="fa fa-star"></i></li>
																<li><i class="fa fa-star"></i></li>
																<li><i class="fa fa-star-half-o"></i></li>
																<li class="total">(4.5)</li>
															</ul>
														</div>
													</div>
												</div>
												<p class="des">nteger enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum.  Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis We are creative company here are many variation generators on the Internet tend to chunks as necessary interdum</p>
												<a href="#" class="btn">But Now!</a>
											</div>
										</div>
									</div>
								</div>
								<!-- End Single List -->
								<div class="col-12">
									<!-- Pagination -->
									<div class="pagination">
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
					</div>
				</div>
			</div>
		</section>
		<!--/ End Product Style 1  -->	

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