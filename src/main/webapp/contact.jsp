<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Stone AIsland - Contact</title>
<!-- <script defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&callback=initMap"></script> -->
<script>
	window.initMap = function() {
		const map = new google.maps.Map(document.getElementById("GoogleMap"), {
			center : {
				lat : 37.45895655325436,
				lng : 127.15410203321714
			},
			zoom : 17,
		});
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

	<div class="hero-wrap hero-bread"
		style="background-image: url('images/bg_6.jpg');">
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<p class="breadcrumbs">
						<span class="mr-2">Contact</span>
					</p>
					<h1 class="mb-0 bread">Contact Us</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section ftco-no-pt ftco-no-pb">
		<div class="container">
			<div class="row no-gutters ftco-services">
				<div class="col-lg-4 text-center d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services p-4 py-md-5">
						<div class="icon d-flex justify-content-center align-items-center mb-4">
							<span class="flaticon-bag"></span>
						</div>
						<div class="media-body">
							<h3 class="heading">고객 지원 센터에 오신 것을 환영합니다!</h3>
							<p>고객님의 편리한 쇼핑을 위해 최선을 다하겠습니다. 궁금한 사항이나 도움이 필요하시면 언제든지 문의해 주세요.</p>
						</div>
					</div>      
				</div>
			<div class="col-lg-4 text-center d-flex align-self-stretch ftco-animate">
				<div class="media block-6 services p-4 py-md-5">
					<div class="icon d-flex justify-content-center align-items-center mb-4">
						<span class="flaticon-customer-service"></span>
					</div>
					<div class="media-body">
						<h3 class="heading">문의 사항이 있으신가요?</h3>
						<p>고객님의 모든 질문과 문제를 신속하게 해결해 드리겠습니다. 저희 고객 지원 팀이 도와드리겠습니다.</p>
					</div>
				</div>    
			</div>
			<div class="col-lg-4 text-center d-flex align-self-stretch ftco-animate">
				<div class="media block-6 services p-4 py-md-5">
					<div class="icon d-flex justify-content-center align-items-center mb-4">
						<span class="flaticon-payment-security"></span>
					</div>
					<div class="media-body">
						<h3 class="heading">보안 강화된 결제 시스템</h3>
						<p>고객님의 개인정보 보호를 최우선으로 생각합니다. 안전하고 신뢰할 수 있는 쇼핑 경험을 제공하겠습니다.</p>
					</div>
				</div>      
			</div>
			</div>
		</div>
	</section>


	<section class="ftco-section contact-section bg-light">
		<div class="container">
			<div class="row d-flex mb-5 contact-info">
				<div class="w-100"></div>
				<div class="col-md-3 d-flex">
					<div class="info bg-white p-4">
						<p>
							<span>Address : </span>
						</p>
						<p>
							경기도 성남시 수정로398<br>한국폴리텍 성남캠퍼스 드림관
						</p>
					</div>
				</div>
				<div class="col-md-3 d-flex">
					<div class="info bg-white p-4">
						<p>
							<span>Phone : </span>
						</p>
						<p>+82) 031 739 4000</p>
					</div>
				</div>
				<div class="col-md-3 d-flex">
					<div class="info bg-white p-4">
						<p>
							<span>Email : </span>
						</p>
						<p>2403340111@office.kopo.ac.kr</p>
					</div>
				</div>
				<div class="col-md-3 d-flex">
					<div class="info bg-white p-4">
						<p>
							<span>Info : </span>
						</p>
						<p>
							<a href="https://foursixfive.github.io/">Github</a>
						</p>
						<p>
							<a href="https://velog.io/@four_six_five">Velog</a>
						</p>
					</div>
				</div>
			</div>
			
			
			<div class="row block-9">

				<div class="col-md-6 order-md-last d-flex">
					<form action="addRequest.do" class="bg-white p-5 contact-form" method="post">
						<div class="form-group">
							<input name="userId" type="text" class="form-control" value="${ sessionScope.userInfo.id }" placeholder="로그인 후 이용가능 합니다" readonly>
						</div>
						<div class="form-group">
							<input name="userName" type="text" class="form-control" placeholder="이름 입력 : ">
						</div>
						<div class="form-group">
							<input name="requestTitle" type="text" class="form-control" placeholder="문의 제목 : ">
						</div>
						<div class="form-group">
							<textarea name="content" id="content" cols="30" rows="7" class="form-control"
								placeholder="문의 내용을 입력하세요 : "></textarea>
						</div>
						<c:choose>
							<c:when test="${ empty sessionScope.userInfo }">
								<div class="form-group">
									<input type="submit" value="로그인 후 이용가능 합니다"
										class="btn btn-primary py-3 px-5">
								</div>
							</c:when>
							<c:otherwise>
								<div class="form-group">
									<input type="submit" value="Send Message"
										class="btn btn-primary py-3 px-5">
								</div>
							</c:otherwise>
						</c:choose>
					</form>
				</div>

				<div class="col-md-6 d-flex" style="align: center;">
					<div id="GoogleMap" style="width: 100%; height: 100%;"></div>
				</div>
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