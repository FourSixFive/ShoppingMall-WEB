<%@page import="kr.ac.kopo.vo.GoodsVO"%>
<%@page import="kr.ac.kopo.dao.GoodsDAObatis"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
							src="images/Main01.png" alt="">
						<div class="one-forth d-flex align-items-center ftco-animate"
							data-scrollax=" properties: { translateY: '70%' }">
							<div class="text">
								<span class="subheading">STONE AISLAND</span>
								<div class="horizontal">
									<h1 class="mb-4 mt-3">WELCOME</h1>
									<p class="mb-4">Nicely Experiences</p>

									<p><a href="/ShoppingMall-WEB/shop.do?itemPrice=99999999&itemType=outers" class="btn-custom">Discover Now</a></p>
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
							src="images/Main.png" alt="">
						<div class="one-forth d-flex align-items-center ftco-animate"
							data-scrollax=" properties: { translateY: '70%' }">
							<div class="text">
								<span class="subheading">#New Arrival</span>
								<div class="horizontal">
									<h1 class="mb-4 mt-3">STONE</h1>
									<h1 class="mb-4 mt-3">&emsp;AISLAND</h1>
									<p class="mb-4">Get As You Want</p>

									<!-- <p>
										<a href="/ShoppingMall-WEB/shop.do" class="btn-custom">Discover Now</a>
									</p> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center mb-3 pb-3">
				<div class="col-md-12 heading-section text-center ftco-animate">
					<h2 class="mb-4">랜덤 추천 상품</h2>
					<p>Random Product Recommendation</p>
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
							<a href="${pageContext.request.contextPath}/productSingle.do?itemCode=${ random.itemCode }" class="img-prod"><img class="img-fluid"
								src="${ random.itemAddr }00.jpg" alt="Colorlib Template">
								<div class="overlay"></div> </a>
							<div class="text py-3 pb-4 px-3">
								<div class="d-flex">
									<div class="cat">
										<span>Lifestyle</span>
									</div>
								</div>
								<h3>
									<a href="${pageContext.request.contextPath}/productSingle.do?itemCode=${ random.itemCode }">${ random.itemName }</a>
								</h3>
								<div class="pricing">
									<p class="price">
										<span>&#8361; <fmt:formatNumber value="${random.itemPrice}" type="number" groupingUsed="true" /></span>
									</p>
								</div>
								<p class="bottom-area d-flex px-3">
									<a href="${pageContext.request.contextPath}/productSingle.do?itemCode=${ random.itemCode }" class="add-to-cart text-center py-2 mr-1"><span><i class="ion-ios-add ml-1"></i> Details
									</span></a> <!-- <a href="#" class="buy-now text-center py-2"><i class="ion-ios-add ml-1"></i> Cart<span><i
											class="ion-ios-cart ml-1"></i></span></a> -->
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- 하나 출력 div end -->
				
			</div>
		</div>
		<hr>
		<br>
		<br>
		<div class="container">
			<div class="row justify-content-center mb-3 pb-3">
				<div class="col-md-12 heading-section text-center ftco-animate">
					<h2 class="mb-4">최고 인기 상품</h2>
					<p>Best Seller Product Recommendation</p>
				</div>
			</div>
		</div>
		<div class="container">
			
			<div class="row">
				<!-- 하나 출력 div start -->
				<c:forEach items="${ requestScope.bestList }" var="best">
					<div class="col-sm-12 col-md-6 col-lg-3 ftco-animate d-flex">
						<div class="product d-flex flex-column">
							<br><br>
							<a href="#!" class="img-prod"><img class="img-fluid"
								src="${ best.itemAddr }00.jpg" alt="Colorlib Template">
								<div class="overlay"></div> </a>
							<div class="text py-3 pb-4 px-3">
								<div class="d-flex">
									<div class="cat">
										<span>Lifestyle</span>
									</div>
								</div>
								<h3>
									<a href="#!">${ best.itemName }</a>
								</h3>
								<div class="pricing">
									<p class="price">
										<span>&#8361; ${ best.itemPrice }</span>
									</p>
								</div>
								<p class="bottom-area d-flex px-3">
									<a href="${pageContext.request.contextPath}/productSingle.do?itemCode=${ best.itemCode }" class="add-to-cart text-center py-2 mr-1"><span><i class="ion-ios-add ml-1"></i> Details
									</span></a> <!-- <a href="#" class="buy-now text-center py-2"><i class="ion-ios-add ml-1"></i> Cart<span><i
											class="ion-ios-cart ml-1"></i></span></a> -->
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- 하나 출력 div end -->
				
			</div>
		</div>
	</section>

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