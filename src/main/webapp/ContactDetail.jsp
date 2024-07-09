<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Stone AIsland - 고객문의함</title>
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
<style>
	#tableContainer {
		display: flex;
		justify-content: center;
		align-items: flex-start;
		padding: 20px;
	}

	#styledTable {
		width: 60%;
		border-collapse: collapse;
	}
	
	#styledTable th {
		padding: 10px;
		text-align: center;
		border: 1px solid #dddddd;
	}
	
	#styledTable td {
		padding: 10px;
		border: 1px solid #dddddd;
	}
	
	#styledTable th {
		background-color: #dbcc8f;
		color: #ffffff;
	}
	
	#styledTable tr:nth-child(even) {
		background-color: #f2f2f2;
	}
</style>
<script>
	
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
						<span class="mr-2">고객문의함</span>
					</p>
					<h1 class="mb-0 bread">고객문의함</h1>
				</div>
			</div>
		</div>
	</div>
	
	<div id="tableContainer">
		<table id="styledTable">
			<thead>
				<tr>
					<th style="width: 15%;">문의번호 : ${ requestScope.board.no }</th>
					<th style="width: 55%;">${ requestScope.board.title }</th>
					<th style="width: 10%;">${ requestScope.board.id }</th>
					<th style="width: 10%;">${ requestScope.board.regDate }</th>
					<th style="width: 5%;"> - </th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="4"><pre>${ requestScope.board.content }</pre></td>
					<td><button type="button" value="삭제"
								class="btn btn-primary py-3 px-8"></button></td>
				</tr>
			</tbody>
		</table>
	</div>
	
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