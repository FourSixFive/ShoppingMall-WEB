<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Stone AIsland - Login</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="google-signin-client_id" content="613038564599-vhp0bgg7f1hl7tf6bersmebbesldargn.apps.googleusercontent.com">
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
<style>
	#extraPoint{
		font-size: 1.1em;
		font-weight: bold;
		color: #FFFFFF;
		background-color: #dbcc8f;
		border-radius: 20px;
	}
</style>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script>
	function onSignIn(googleUser) {
		  var profile = googleUser.getBasicProfile();
		  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
		  console.log('Name: ' + profile.getName());
		  console.log('Image URL: ' + profile.getImageUrl());
		  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
	}
</script>
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
						<span class="mr-2">Login</span>
					</p>
					<h1 class="mb-0 bread">Login</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section contact-section bg-light">
		<div class="container" style="width:600px;">
			<form action="login.do" class="bg-white p-5 contact-form" method="post">
				<div class="form-group">
					<input name="userID" type="text" class="form-control" placeholder="ID">
				</div>
				<div class="form-group">
					<input name="userPWD" type="password" class="form-control" placeholder="Password">
				</div>
				<div class="form-group" style="text-align: center;">
					<input type="submit" value="Login"
						class="btn btn-primary py-3 px-5">
					<input type="button" value="Sign Up" onClick="location.href='signUpForm.do'"
						class="btn btn-primary py-3 px-5">
				</div>
				
				
				<div style="text-align: right;">
					<span id="extraPoint">&emsp;신규회원 가입 시 2000p 지급!&emsp;</span>
				</div>
			</form>
				<!-- 간편로그인 버튼 -->
				<div class="g-signin2" data-onsuccess="onSignIn"></div>
				<!-- 간편로그인 버튼 -->
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