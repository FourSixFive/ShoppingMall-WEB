<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Stone AIsland - Shop</title>
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
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
	    $('#pagination li a').click(function(event) {
	        event.preventDefault();
	        
	        // Remove 'active' class from all <li> elements
	        $('#pagination li').removeClass('active');
	        
	        // Add 'active' class to the clicked <li> element
	        $(this).parent().addClass('active');
	    });
	});
</script> -->
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
						<span class="mr-2">Shop</span>
					</p>
					<h1 class="mb-0 bread">Shop</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-10 order-md-last">
					<div class="row">
					
					<c:forEach items="${ requestScope.shopList }" var="allList">
					<!-- 상품 블록 1개 start -->
						<div class="col-sm-12 col-md-12 col-lg-4 ftco-animate d-flex">
							<div class="product d-flex flex-column">
								<a href="/ShoppingMall-WEB/productSingle.do?itemCode=${ allList.itemCode }" class="img-prod"><img class="img-fluid"
									src="${ allList.itemAddr }00.jpg" alt="Colorlib Template">
									<div class="overlay"></div> </a>
								<div class="text py-3 pb-4 px-3">
									<div class="d-flex">
										<div class="cat">
											<span>Lifestyle</span>
										</div>
										<!-- <div class="rating">
											<p class="text-right mb-0">
												<a href="#"><span class="ion-ios-star-outline"></span></a> <a
													href="#"><span class="ion-ios-star-outline"></span></a> <a
													href="#"><span class="ion-ios-star-outline"></span></a> <a
													href="#"><span class="ion-ios-star-outline"></span></a> <a
													href="#"><span class="ion-ios-star-outline"></span></a>
											</p>
										</div> -->
									</div>
									<h3>
										<a href="#">&#8361; ${ allList.itemName }</a>
									</h3>
									<div class="pricing">
										<p class="price">
											<span><fmt:formatNumber value="${ allList.itemPrice }" type="number" groupingUsed="true" /></span>
										</p>
									</div>
									<p class="bottom-area d-flex px-3">
										<a href="/ShoppingMall-WEB/productSingle.do?itemCode=${ allList.itemCode }" class="add-to-cart text-center py-2 mr-1"><span>Details<i class="ion-ios-add ml-1"></i>
										</span></a> <!-- <a href="#" class="buy-now text-center py-2">Buy now<span><i
												class="ion-ios-cart ml-1"></i></span></a> -->
									</p>
								</div>
							</div>
						</div>
					<!-- 상품 블록 1개 end -->
					</c:forEach>
						
					
					

	<!-- <div class="col-sm-12 col-md-12 col-lg-4 ftco-animate d-flex">
 				<div class="product">
 					<a href="#" class="img-prod"><img class="img-fluid" src="images/product-7.png" alt="Colorlib Template">
  					<div class="overlay"></div>
  				</a>
 					<div class="text py-3 pb-4 px-3">
 						<div class="d-flex">
 							<div class="cat">
   						<span>Lifestyle</span>
   					</div>
   					<div class="rating">
  							<p class="text-right mb-0">
  								<a href="#"><span class="ion-ios-star-outline"></span></a>
  								<a href="#"><span class="ion-ios-star-outline"></span></a>
  								<a href="#"><span class="ion-ios-star-outline"></span></a>
  								<a href="#"><span class="ion-ios-star-outline"></span></a>
  								<a href="#"><span class="ion-ios-star-outline"></span></a>
  							</p>
  						</div>
  					</div>
 						<h3><a href="#">Nike Free RN 2019 iD</a></h3>
						<div class="pricing">
  						<p class="price"><span>$120.00</span></p>
  					</div>
  					<p class="bottom-area d-flex px-3">
 							<a href="#" class="add-to-cart text-center py-2 mr-1"><span>Add to cart <i class="ion-ios-add ml-1"></i></span></a>
 							<a href="#" class="buy-now text-center py-2">Buy now<span><i class="ion-ios-cart ml-1"></i></span></a>
 						</p>
 					</div>
 				</div>
 			</div> -->


	<!-- <div class="col-sm-12 col-md-12 col-lg-4 ftco-animate d-flex">
 				<div class="product">
 					<a href="#" class="img-prod"><img class="img-fluid" src="images/product-8.png" alt="Colorlib Template">
 						<div class="overlay"></div>
 					</a>
 					<div class="text py-3 pb-4 px-3">
 						<div class="d-flex">
 							<div class="cat">
   						<span>Lifestyle</span>
   					</div>
   					<div class="rating">
  							<p class="text-right mb-0">
  								<a href="#"><span class="ion-ios-star-outline"></span></a>
  								<a href="#"><span class="ion-ios-star-outline"></span></a>
  								<a href="#"><span class="ion-ios-star-outline"></span></a>
  								<a href="#"><span class="ion-ios-star-outline"></span></a>
  								<a href="#"><span class="ion-ios-star-outline"></span></a>
  							</p>
  						</div>
  					</div>
 						<h3><a href="#">Nike Free RN 2019 iD</a></h3>
						<div class="pricing">
  						<p class="price"><span>$120.00</span></p>
  					</div>
  					<p class="bottom-area d-flex px-3">
 							<a href="#" class="add-to-cart text-center py-2 mr-1"><span>Add to cart <i class="ion-ios-add ml-1"></i></span></a>
 							<a href="#" class="buy-now text-center py-2">Buy now<span><i class="ion-ios-cart ml-1"></i></span></a>
 						</p>
 					</div>
 				</div>
 			</div> -->
					</div>
					<div class="row mt-5">
						<div class="col text-center">
							<div class="block-27">
								<ul id="pagination">
									<li><a href="#!">&lt;</a></li>
									<li><a href="/ShoppingMall-WEB/shop.do?itemPrice=${ param.itemPrice }&itemType=${ param.itemType }&Page=1">1</a></li>
									<li><a href="/ShoppingMall-WEB/shop.do?itemPrice=${ param.itemPrice }&itemType=${ param.itemType }&Page=2">2</a></li>
									<li><a href="/ShoppingMall-WEB/shop.do?itemPrice=${ param.itemPrice }&itemType=${ param.itemType }&Page=3">3</a></li>
									<li><a href="/ShoppingMall-WEB/shop.do?itemPrice=${ param.itemPrice }&itemType=${ param.itemType }&Page=4">4</a></li>
									<li><a href="/ShoppingMall-WEB/shop.do?itemPrice=${ param.itemPrice }&itemType=${ param.itemType }&Page=5">5</a></li>
									<li><a href="#!">&gt;</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4 col-lg-2">
					<div class="sidebar">
						
						<!-- Categories start -->
						<div class="sidebar-box-2">
							<h2 class="heading">Categories</h2>
							<div class="fancy-collapse-panel">
								<div class="panel-group" id="accordion" role="tablist"
									aria-multiselectable="true">
									
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="headingOne">
											<h4 class="panel-title">
											<a href="/ShoppingMall-WEB/shop.do?itemPrice=${ param.itemPrice }&itemType=outers">Outers</a>
												<!-- <a class="collapsed"  data-toggle="collapse"
													data-parent="#accordion" href="/ShoppingMall-WEB/shop.do?itemType=outers&itemPrice=99999999"
													aria-expanded="false" aria-controls="collapseOne">
													Outers
												</a> -->
											</h4>
										</div>
										<!-- <div id="collapseOne" class="panel-collapse collapse"
											role="tabpanel" aria-labelledby="headingOne">
											<div class="panel-body">
												<ul>
													<li><a href="#">Sport</a></li>
													<li><a href="#">Casual</a></li>
													<li><a href="#">Running</a></li>
													<li><a href="#">Jordan</a></li>
													<li><a href="#">Soccer</a></li>
													<li><a href="#">Football</a></li>
													<li><a href="#">Lifestyle</a></li>
												</ul>
											</div>
										</div> -->
									</div>
									
									
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="headingTwo">
											<h4 class="panel-title">
											<a href="/ShoppingMall-WEB/shop.do?itemPrice=${ param.itemPrice }&itemType=shirt">Shirt</a>
												<!-- <a class="collapsed" data-toggle="collapse"
													data-parent="#accordion" href="/ShoppingMall-WEB/shop.do?itemType=shirt&itemPrice=99999999"
													aria-expanded="false" aria-controls="collapseTwo">
												</a> -->
											</h4>
										</div>
										<!-- <div id="collapseTwo" class="panel-collapse collapse"
											role="tabpanel" aria-labelledby="headingTwo">
											<div class="panel-body">
												<ul>
													<li><a href="#">Sport</a></li>
													<li><a href="#">Casual</a></li>
													<li><a href="#">Running</a></li>
													<li><a href="#">Jordan</a></li>
													<li><a href="#">Soccer</a></li>
													<li><a href="#">Football</a></li>
													<li><a href="#">Lifestyle</a></li>
												</ul>
											</div>
										</div> -->
									</div>
									
									
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="headingThree">
											<h4 class="panel-title">
											<a href="/ShoppingMall-WEB/shop.do?itemPrice=${ param.itemPrice }&itemType=trousers">Trousers</a>
												<!-- <a class="collapsed" data-toggle="collapse"
													data-parent="#accordion" href="/ShoppingMall-WEB/shop.do?itemType=trousers&itemPrice=99999999"
													aria-expanded="false" aria-controls="collapseThree">
													Trousers
												</a> -->
											</h4>
										</div>
										<!-- <div id="collapseThree" class="panel-collapse collapse"
											role="tabpanel" aria-labelledby="headingThree">
											<div class="panel-body">
												<ul>
													<li><a href="#">Jeans</a></li>
													<li><a href="#">T-Shirt</a></li>
													<li><a href="#">Jacket</a></li>
													<li><a href="#">Shoes</a></li>
												</ul>
											</div>
										</div> -->
									</div>
									
									
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="headingFour">
											<h4 class="panel-title">
											<a href="/ShoppingMall-WEB/shop.do?itemPrice=${ param.itemPrice }&itemType=ETC">ETC</a>	
												<!-- <a class="collapsed" data-toggle="collapse"
													data-parent="#accordion" href="/ShoppingMall-WEB/shop.do?itemType=ETC&itemPrice=99999999"
													aria-expanded="false" aria-controls="collapseThree">
													ETC
												</a> -->
											</h4>
										</div>
										<!-- <div id="collapseFour" class="panel-collapse collapse"
											role="tabpanel" aria-labelledby="headingFour">
											<div class="panel-body">
												<ul>
													<li><a href="#">Jeans</a></li>
													<li><a href="#">T-Shirt</a></li>
													<li><a href="#">Jacket</a></li>
													<li><a href="#">Shoes</a></li>
												</ul>
											</div>
										</div> -->
									</div>
									
									
								</div>
							</div>
						</div>
						<!-- Categories end -->
						
						<!-- Price Range start -->
						<div class="sidebar-box-2">
							<h2 class="heading">Price Range</h2>
							<div class="row">
								<!-- <div class="col-md-12">
									<div class="form-group">
										<label for="guests">최소 금액</label>
										<div class="form-field">
											<i class="icon icon-arrow-down3"></i> <select name="people1"
												id="people1" class="form-control">
												<option value="0">0</option>
												<option value="200000">200,000</option>
												<option value="400000">300,000</option>
												<option value="600000">400,000</option>
											</select>
										</div>
									</div>
								</div> -->
								<div class="col-md-12">
									<div class="form-group">
										<label for="guests">최대 금액</label>
										<form action="shop.do">
											<div class="form-field">
												<i class="icon icon-arrow-down3"></i> <select name="itemPrice"
													id="itemPrice" class="form-control">
													<option value="99999999"> - </option>
													<option value="400000">400,000</option>
													<option value="800000">800,000</option>
													<option value="1200000">1,200,000</option>
												</select>
											</div>
											<br>
											<input id="itemType" name="itemType" type="hidden" value="${ itemType }">
											<input type="submit" value="선택완료" class="btn btn-primary py-3 px-5">
										</form>
									</div>
								</div>
							</div>
						</div>
						<!-- Price Range end -->
						
					</div>
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