<%@page import="kr.ac.kopo.dao.GoodsDAObatis"%>
<%@page import="kr.ac.kopo.vo.GoodsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String code = request.getParameter("itemCode");
	GoodsDAObatis goodsbatis = new GoodsDAObatis();
	GoodsVO goods = new GoodsVO();
	
	goods = goodsbatis.singleItem(code);
	pageContext.setAttribute("goods", goods);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Stone AIsland - product-Single</title>
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
						<span class="mr-2">Shop</span>
					</p>
					<h1 class="mb-0 bread">Shop</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 mb-5 ftco-animate">
					<a href="images/product-1.png" class="image-popup prod-img-bg"><img
						src="${ goods.itemAddr }00.jpg" class="img-fluid"
						alt="Colorlib Template"></a>
				</div>
				<div class="col-lg-6 product-details pl-md-5 ftco-animate">
					<h3>${ goods.itemName }</h3>
					<!-- <div class="rating d-flex">
						<p class="text-left mr-4">
							<a href="#" class="mr-2">5.0</a> <a href="#"><span
								class="ion-ios-star-outline"></span></a> <a href="#"><span
								class="ion-ios-star-outline"></span></a> <a href="#"><span
								class="ion-ios-star-outline"></span></a> <a href="#"><span
								class="ion-ios-star-outline"></span></a> <a href="#"><span
								class="ion-ios-star-outline"></span></a>
						</p>
						<p class="text-left mr-4">
							<a href="#" class="mr-2" style="color: #000;">100 <span
								style="color: #bbb;">Rating</span></a>
						</p>
						<p class="text-left">
							<a href="#" class="mr-2" style="color: #000;">500 <span
								style="color: #bbb;">Sold</span></a>
						</p>
					</div> -->
					<p class="price">
						<span>&#8361; ${ goods.itemPrice }</span>
					</p>
					
					<p>${ goods.itemDetail }</p>
					<p>${ goods.itemStyle }</p>
					<div class="row mt-4">
						<div class="col-md-6">
							<div class="form-group d-flex">
								<div class="select-wrap">
									
									<!-- SIZE 관련 div -->
									<!-- <div class="icon">
										<span class="ion-ios-arrow-down"></span>
									</div>
									<select name="" id="" class="form-control">
										<option value="">Small</option>
										<option value="">Medium</option>
										<option value="">Large</option>
										<option value="">Extra Large</option>
									</select> -->
								</div>
							</div>
						</div>
						<div class="w-100"></div>
						<!-- <div class="input-group col-md-6 d-flex mb-3">
							<span class="input-group-btn mr-2">
								<button type="button" class="quantity-left-minus btn"
									data-type="minus" data-field="">
									<i class="ion-ios-remove"></i>
								</button>
							</span> <input type="text" id="quantity" name="quantity"
								class="quantity form-control input-number" value="1" min="1"
								max="100"> <span class="input-group-btn ml-2">
								<button type="button" class="quantity-right-plus btn"
									data-type="plus" data-field="">
									<i class="ion-ios-add"></i>
								</button>
							</span>
						</div> -->
						<div class="w-100"></div>
						<div class="col-md-12">
							<p style="color: #000;">남은 수량 [${ goods.itemQuantity }] 개</p>
						</div>
					</div>
					<p>
						<a href="addCart.jsp?itemCode=${ goods.itemCode }&userID=${ sessionScope.userInfo.id }" class="btn btn-black py-3 px-5 mr-2">Add to Cart</a>
						<a href="cart.jsp" class="btn btn-primary py-3 px-5">Buy now</a>
					</p>
				</div>
			</div>




			<div class="row mt-5">
				<div class="col-md-12 nav-link-wrap">
					<div class="nav nav-pills d-flex text-center" id="v-pills-tab"
						role="tablist" aria-orientation="vertical">
						<a class="nav-link ftco-animate active mr-lg-1" id="v-pills-1-tab"
							data-toggle="pill" href="#v-pills-1" role="tab"
							aria-controls="v-pills-1" aria-selected="true">Description</a> <a
							class="nav-link ftco-animate mr-lg-1" id="v-pills-2-tab"
							data-toggle="pill" href="#v-pills-2" role="tab"
							aria-controls="v-pills-2" aria-selected="false">상세정보</a>

						<a class="nav-link ftco-animate" id="v-pills-3-tab"
							data-toggle="pill" href="#v-pills-3" role="tab"
							aria-controls="v-pills-3" aria-selected="false">Reviews</a>

					</div>
				</div>
				<div class="col-md-12 tab-wrap">

					<div class="tab-content bg-light" id="v-pills-tabContent">

						<div class="tab-pane fade show active" id="v-pills-1"
							role="tabpanel" aria-labelledby="day-1-tab">
							<div class="p-4">
								<h3 class="mb-4">${ goods.itemName }</h3>
								<p>${ goods.itemDetail }</p>
							</div>
						</div>

						<div class="tab-pane fade" id="v-pills-2" role="tabpanel"
							aria-labelledby="v-pills-day-2-tab">
							<div class="p-4">
								<h3 class="mb-4">정보</h3>
								<p>재질 : ${ goods.itemMadefor }</p>
								<p>${ goods.itemCleaning }</p>
							</div>
						</div>
						<div class="tab-pane fade" id="v-pills-3" role="tabpanel"
							aria-labelledby="v-pills-day-3-tab">
							<div class="row p-4">
								<div class="col-md-7">
									<h3 class="mb-4">23 Reviews</h3>
									<div class="review">
										<div class="user-img"
											style="background-image: url(images/person_1.jpg)"></div>
										<div class="desc">
											<h4>
												<span class="text-left">Jacob Webb</span> <span
													class="text-right">14 March 2018</span>
											</h4>
											<p class="star">
												<span> <i class="ion-ios-star-outline"></i> <i
													class="ion-ios-star-outline"></i> <i
													class="ion-ios-star-outline"></i> <i
													class="ion-ios-star-outline"></i> <i
													class="ion-ios-star-outline"></i>
												</span> <span class="text-right"><a href="#" class="reply"><i
														class="icon-reply"></i></a></span>
											</p>
											<p>When she reached the first hills of the Italic
												Mountains, she had a last view back on the skyline of her
												hometown Bookmarksgrov</p>
										</div>
									</div>
									<div class="review">
										<div class="user-img"
											style="background-image: url(images/person_2.jpg)"></div>
										<div class="desc">
											<h4>
												<span class="text-left">Jacob Webb</span> <span
													class="text-right">14 March 2018</span>
											</h4>
											<p class="star">
												<span> <i class="ion-ios-star-outline"></i> <i
													class="ion-ios-star-outline"></i> <i
													class="ion-ios-star-outline"></i> <i
													class="ion-ios-star-outline"></i> <i
													class="ion-ios-star-outline"></i>
												</span> <span class="text-right"><a href="#" class="reply"><i
														class="icon-reply"></i></a></span>
											</p>
											<p>When she reached the first hills of the Italic
												Mountains, she had a last view back on the skyline of her
												hometown Bookmarksgrov</p>
										</div>
									</div>
									<div class="review">
										<div class="user-img"
											style="background-image: url(images/person_3.jpg)"></div>
										<div class="desc">
											<h4>
												<span class="text-left">Jacob Webb</span> <span
													class="text-right">14 March 2018</span>
											</h4>
											<p class="star">
												<span> <i class="ion-ios-star-outline"></i> <i
													class="ion-ios-star-outline"></i> <i
													class="ion-ios-star-outline"></i> <i
													class="ion-ios-star-outline"></i> <i
													class="ion-ios-star-outline"></i>
												</span> <span class="text-right"><a href="#" class="reply"><i
														class="icon-reply"></i></a></span>
											</p>
											<p>When she reached the first hills of the Italic
												Mountains, she had a last view back on the skyline of her
												hometown Bookmarksgrov</p>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="rating-wrap">
										<h3 class="mb-4">Give a Review</h3>
										<p class="star">
											<span> <i class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> (98%)
											</span> <span>20 Reviews</span>
										</p>
										<p class="star">
											<span> <i class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> (85%)
											</span> <span>10 Reviews</span>
										</p>
										<p class="star">
											<span> <i class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> (98%)
											</span> <span>5 Reviews</span>
										</p>
										<p class="star">
											<span> <i class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> (98%)
											</span> <span>0 Reviews</span>
										</p>
										<p class="star">
											<span> <i class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> <i
												class="ion-ios-star-outline"></i> (98%)
											</span> <span>0 Reviews</span>
										</p>
									</div>
								</div>
							</div>
						</div>
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

	<script>
		$(document).ready(function(){

		var quantitiy=0;
		   $('.quantity-right-plus').click(function(e){
		        
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		            
		            $('#quantity').val(quantity + 1);

		          
		            // Increment
		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>0){
		            $('#quantity').val(quantity - 1);
		            }
		    });
		    
		});
	</script>

</body>
</html>