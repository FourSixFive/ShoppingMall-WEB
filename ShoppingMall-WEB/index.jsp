<%@page import="kr.ac.kopo.vo.GoodsVO"%>
<%@page import="kr.ac.kopo.dao.GoodsDAObatis"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Stone AIsland - OnlineMall</title>
<script>
	window.onload = function() {
		const images = document.getElementsByTagName('img');
		
		for (let i = 0; i < images.length; i++) {
			const img = images[i];
			img.src = img.src.replace(/ /g, '%20');
		}
	};
</script>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800"
	rel="stylesheet">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body class="goto-here">
	<div>
		<jsp:include page="/include/topMenu.jsp"></jsp:include>
	</div>
	<section id="home-section" class="hero">
		<div class="home-slider owl-carousel">
			<div class="slider-item js-fullheight">
				<div class="overlay"></div>
				<div class="container-fluid p-0">
					<div
						class="row d-md-flex no-gutters slider-text align-items-center justify-content-end"
						data-scrollax-parent="true">
						<img class="one-third order-md-last img-fluid"
							src="images/Main.jpg" alt="">
						<div class="one-forth d-flex align-items-center ftco-animate"
							data-scrollax=" properties: { translateY: '70%' }">
							<div class="text">
								<span class="subheading">STONE AISLAND</span>
								<div class="horizontal">
									<h1 class="mb-4 mt-3">WELCOME</h1>
									<p class="mb-4">대충 환영 문구</p>

									<!-- <p><a href="#" class="btn-custom">Discover Now</a></p> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="slider-item js-fullheight">
				<div class="overlay"></div>
				<div class="container-fluid p-0">
					<div
						class="row d-flex no-gutters slider-text align-items-center justify-content-end"
						data-scrollax-parent="true">
						<img class="one-third order-md-last img-fluid"
							src="images/NewArrival01-removebg.png" alt="">
						<div class="one-forth d-flex align-items-center ftco-animate"
							data-scrollax=" properties: { translateY: '70%' }">
							<div class="text">
								<span class="subheading">#New Arrival</span>
								<div class="horizontal">
									<h1 class="mb-4 mt-3">신상소개글 01</h1>
									<p class="mb-4">Detail 문구 02</p>

									<p>
										<a href="/ShoppingMall-WEB/shop.jsp" class="btn-custom">Discover Now</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="slider-item js-fullheight">
				<div class="overlay"></div>
				<div class="container-fluid p-0">
					<div
						class="row d-flex no-gutters slider-text align-items-center justify-content-end"
						data-scrollax-parent="true">
						<img class="one-third order-md-last img-fluid"
							src="images/NewArrival02-removebg.png" alt="">
						<div class="one-forth d-flex align-items-center ftco-animate"
							data-scrollax=" properties: { translateY: '70%' }">
							<div class="text">
								<span class="subheading">#New Arrival</span>
								<div class="horizontal">
									<h1 class="mb-4 mt-3">신상소개글 01</h1>
									<p class="mb-4">Detail 문구 02</p>

									<p>
										<a href="/ShoppingMall-WEB/shop.jsp" class="btn-custom">Discover Now</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- <section class="ftco-section ftco-no-pt ftco-no-pb">
		<div class="container">
			<div class="row no-gutters ftco-services">
				<div
					class="col-lg-4 text-center d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services p-4 py-md-5">
						<div
							class="icon d-flex justify-content-center align-items-center mb-4">
							<span class="flaticon-bag"></span>
						</div>
						<div class="media-body">
							<h3 class="heading">홈페이지가 풍족해보이는 공간01</h3>
							<p>인코딩 박살 나는거 너무 열받네01</p>
						</div>
					</div>
				</div>
				<div
					class="col-lg-4 text-center d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services p-4 py-md-5">
						<div
							class="icon d-flex justify-content-center align-items-center mb-4">
							<span class="flaticon-customer-service"></span>
						</div>
						<div class="media-body">
							<h3 class="heading">홈페이지가 풍족해보이는 공간02</h3>
							<p>인코딩 박살 나는거 너무 열받네02</p>
						</div>
					</div>
				</div>
				<div
					class="col-lg-4 text-center d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services p-4 py-md-5">
						<div
							class="icon d-flex justify-content-center align-items-center mb-4">
							<span class="flaticon-payment-security"></span>
						</div>
						<div class="media-body">
							<h3 class="heading">홈페이지가 풍족해보이는 공간03</h3>
							<p>인코딩 박살 나는거 너무 열받네03</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center mb-3 pb-3">
				<div class="col-md-12 heading-section text-center ftco-animate">
					<h2 class="mb-4">인기상품을 만나보세요</h2>
					<p>All Seasons</p>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				
				<!-- 하나 출력 div start -->
				<c:forEach items="${ requestScope.randomList }" var="random">
					<div class="col-sm-12 col-md-6 col-lg-3 ftco-animate d-flex">
						<div class="product d-flex flex-column">
							<br><br>
							<a href="#!" class="img-prod"><img class="img-fluid"
								src="${ random.itemAddr }00.jpg" alt="Colorlib Template">
								<div class="overlay"></div> </a>
							<div class="text py-3 pb-4 px-3">
								<div class="d-flex">
									<div class="cat">
										<span>Lifestyle</span>
									</div>
								</div>
								<h3>
									<a href="#!">${ random.itemName }</a>
								</h3>
								<div class="pricing">
									<p class="price">
										<span>&#8361; ${ random.itemPrice }</span>
									</p>
								</div>
								<p class="bottom-area d-flex px-3">
									<a href="product-single.jsp?itemCode=${ random.itemCode }" class="add-to-cart text-center py-2 mr-1"><span><i class="ion-ios-add ml-1"></i> Details
									</span></a> <a href="#" class="buy-now text-center py-2"><i class="ion-ios-add ml-1"></i> Cart<span><i
											class="ion-ios-cart ml-1"></i></span></a>
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- 하나 출력 div end -->
				
			</div>
		</div>
	</section>

	<!-- <section class="ftco-section ftco-choose ftco-no-pb ftco-no-pt">
		<div class="container">
			<div class="row no-gutters">
				<div class="col-lg-4">
					<div class="choose-wrap divider-one img p-5 d-flex align-items-end"
						style="background-image: url(images/choose-1.jpg);">

						<div class="text text-center text-white px-2">
							<span class="subheading">Men's Shoes</span>
							<h2>Men's Collection</h2>
							<p>Separated they live in Bookmarksgrove right at the coast
								of the Semantics, a large language ocean.</p>
							<p>
								<a href="#" class="btn btn-black px-3 py-2">Shop now</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-8">
					<div
						class="row no-gutters choose-wrap divider-two align-items-stretch">
						<div class="col-md-12">
							<div
								class="choose-wrap full-wrap img align-self-stretch d-flex align-item-center justify-content-end"
								style="background-image: url(images/choose-2.jpg);">
								<div class="col-md-7 d-flex align-items-center">
									<div class="text text-white px-5">
										<span class="subheading">Women's Shoes</span>
										<h2>Women's Collection</h2>
										<p>Separated they live in Bookmarksgrove right at the
											coast of the Semantics, a large language ocean.</p>
										<p>
											<a href="#" class="btn btn-black px-3 py-2">Shop now</a>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="row no-gutters">
								<div class="col-md-6">
									<div
										class="choose-wrap wrap img align-self-stretch bg-light d-flex align-items-center">
										<div class="text text-center px-5">
											<span class="subheading">Summer Sale</span>
											<h2>Extra 50% Off</h2>
											<p>Separated they live in Bookmarksgrove right at the
												coast of the Semantics, a large language ocean.</p>
											<p>
												<a href="#" class="btn btn-black px-3 py-2">Shop now</a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div
										class="choose-wrap wrap img align-self-stretch d-flex align-items-center"
										style="background-image: url(images/choose-3.jpg);">
										<div class="text text-center text-white px-5">
											<span class="subheading">Shoes</span>
											<h2>Best Sellers</h2>
											<p>Separated they live in Bookmarksgrove right at the
												coast of the Semantics, a large language ocean.</p>
											<p>
												<a href="#" class="btn btn-black px-3 py-2">Shop now</a>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->

	<footer>
		<jsp:include page="/include/footer.jsp"></jsp:include>
	</footer>

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>
</body>
</html>