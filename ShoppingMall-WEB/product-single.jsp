<%@page import="kr.ac.kopo.dao.GoodsDAObatis"%>
<%@page import="kr.ac.kopo.vo.GoodsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Stone AIsland - product-Single</title>
<style>
	.review-container {
	    width: 90%;
	    margin: 20px;
	    position: relative;
	}
	
	label {
	    font-weight: bold;
	    display: block;
	    margin-bottom: 5px;
	}
	
	.points {
	    position: absolute;
	    top: 0;
	    right: 0;
	    color: #ff0000;
	    font-weight: bold;
	}
	
	.text-review {
	    width: 100%;
	    padding: 10px;
	    box-sizing: border-box;
	    border: 1px solid #ccc;
	    border-radius: 5px;
	    font-size: 14px;
	    resize: none;
	}
	
	.text-review:focus {
	    outline: none;
	    border-color: #000;
	}
	
	.char-count {
	    text-align: right;
	    margin-top: 5px;
	    font-size: 12px;
	    color: #555;
	}
	
</style>
<script>
	function submitBuyNow(frm){
		frm.action='checkout.do';
		frm.submit();
		return true;
	}
	
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
						<span class="mr-2">Item</span>
					</p>
					<h1 class="mb-0 bread">Item</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 mb-5 ftco-animate">
					<a href="${ requestScope.singlegoods.itemAddr }00.jpg" class="image-popup prod-img-bg"><img
						src="${ requestScope.singlegoods.itemAddr }00.jpg" class="img-fluid"
						alt="Colorlib Template"></a>
				</div>
				<div class="col-lg-6 product-details pl-md-5 ftco-animate">
					<form action="addCart.jsp" method="post">
						<h3>${ requestScope.singlegoods.itemName }</h3>
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
							<span>&#8361; <fmt:formatNumber value="${requestScope.singlegoods.itemPrice}" type="number" groupingUsed="true" /></span>
						</p>
						
						<p>${ requestScope.singlegoods.itemDetail }</p>
						<p>${ requestScope.singlegoods.itemStyle }</p>
						<div class="row mt-4">
							<div class="col-md-6">
								<div class="form-group d-flex">
									<div class="select-wrap">
										
										<!-- SIZE 관련 div -->
										<div class="icon">
											<span class="ion-ios-arrow-down"></span>
										</div>
										<c:choose>
											<c:when test="${ requestScope.singlegoods.itemType ne 'ETC' }">
												<select name="selectSize" id="selectSize" class="form-control">
													<option value="Small">Small</option>
													<option value="Medium">Medium</option>
													<option value="Large">Large</option>
													<option value="Extra Large">Extra Large</option>
												</select>
											</c:when>
											<c:otherwise>
												<input type="hidden" value="None" name="selectSize">
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
							<div class="w-100"></div>
							<div class="input-group col-md-6 d-flex mb-3">
								
								<!-- 수량 조절 -->
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
								
								
							</div>
							<div class="w-100"></div>
							<div class="col-md-12">
								<p style="color: #000;">남은 수량 [${ requestScope.singlegoods.itemQuantity }] 개</p>
							</div>
						</div>
						<p>
							<input type="submit" class="btn btn-black py-3 px-5 mr-2" value="장바구니 담기">
							<!-- <input type="button" onclick="return submitBuyNow(this.form);" class="btn btn-primary py-3 px-5" value="Buy now"> -->
						</p>
						<input type="hidden" name="itemCode" value="${ requestScope.singlegoods.itemCode }">
						<input type="hidden" name="userid" value="${ sessionScope.userInfo.id }">
					</form>
				</div>
			</div>
				<hr>
				<div class="col-lg-12 mb-5 ftco-animate" style="text-align: center; border:1px solid black; display: flex; justify-content: center; align-items: center;">
					<div class='child'><a href="${ requestScope.singlegoods.itemAddr }01.jpg" class="image-popup prod-img-bg"
					style="display: inline-block;"><img
							src="${ requestScope.singlegoods.itemAddr }01.jpg" class="img-fluid"
							alt="Colorlib Template"></a>
					</div>
					<div class='child'><a href="${ requestScope.singlegoods.itemAddr }02.jpg" class="image-popup prod-img-bg"
					style="display: inline-block;"><img
							src="${ requestScope.singlegoods.itemAddr }02.jpg" class="img-fluid"
							alt="Colorlib Template"></a>
					</div>
					<div class='child'><a href="${ requestScope.singlegoods.itemAddr }03.jpg" class="image-popup prod-img-bg"
					style="display: inline-block;"><img
							src="${ requestScope.singlegoods.itemAddr }03.jpg" class="img-fluid"
							alt="Colorlib Template"></a>
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
							aria-controls="v-pills-2" aria-selected="false">Fabric Details</a>

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
								<h3 class="mb-4">${ requestScope.singlegoods.itemName }</h3>
								<p>${ requestScope.singlegoods.itemDetail }</p>
							</div>
						</div>

						<div class="tab-pane fade" id="v-pills-2" role="tabpanel"
							aria-labelledby="v-pills-day-2-tab">
							<div class="p-4">
								<h3 class="mb-4">정보</h3>
								<p>재질 : ${ requestScope.singlegoods.itemMadefor }</p>
								<p>${ requestScope.singlegoods.itemCleaning }</p>
							</div>
						</div>
						<div class="tab-pane fade" id="v-pills-3" role="tabpanel"
							aria-labelledby="v-pills-day-3-tab">
							<div>
								<br>
								<div class="col-ml-7">
									<h3 class="mb-4">&emsp;&emsp;[ ${ requestScope.reviewListCnt } ] Reviews</h3>
	<%-- 								<c:if test="${ not empty requestScope.reviewListCnt }">
									</c:if>
									<c:if test="${ empty requestScope.reviewListCnt }">
										<h3 class="mb-4">&emsp;&emsp;[ 0 ] Reviews</h3>
									</c:if> 
	--%>
									
									
									<!-- 리뷰 1칸 영역 -->
									<c:forEach items="${ requestScope.reviewList }" var="review">
										<div class="review">
											<div class="desc">
												<h4>
													<span class="text-left">${ review.id }</span> <span
														class="text-right">${ review.regDate }</span>
												</h4>
													<span> <!-- <i class="ion-ios-star-outline"></i> <i
														class="ion-ios-star-outline"></i> <i
														class="ion-ios-star-outline"></i> <i
														class="ion-ios-star-outline"></i> <i
														class="ion-ios-star-outline"></i> -->
													</span>
													<div>
													<div  class="d-flex justify-content-between">
														<div style="width:90%"></div>
															<!-- <span class="text-right">
																<a href="#!">
																	<i class="icon-reply"></i>
																</a>
															</span> -->
														<c:if test="${ (review.id eq sessionScope.userInfo.id) or (sessionScope.userInfo.id eq 'admin') }">
															<span class="text-right">
																<a href="deleteReview.jsp?reviewNo=${ review.no }&itemCode=${ requestScope.singlegoods.itemCode }">
																	<i class="icon-delete"></i>
																</a>
															</span>
														</c:if>
														<div style="width:5%"></div>
													</div>
													</div>
												<p>${ review.content }</p>
											</div>
										</div>
									</c:forEach>
									<!-- 리뷰 1칸 영역 -->
									
									
									
									<div class="review-container">
										<form id="reviewForm" action="addReview.jsp" method="post">
											<label for="text-review">리뷰 작성</label>
												<textarea id="review" name="review" class="text-review" rows="4" placeholder="여기에 리뷰를 작성하세요."></textarea>
											<input type="submit" value="리뷰 쓰기" class="btn btn-primary py-3 px-5" style="width: 100%;">
											<input type="hidden" name="id" value="${ sessionScope.userInfo.id }">
											<input type="hidden" name="itemCode" value="${ requestScope.singlegoods.itemCode }">
										</form>
									</div>
									
									
								</div>
								<!-- <div class="col-md-4">
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
								</div> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
<footer class="ftco-footer ftco-section">
	<div class="container">
		<div class="row">
			<div class="mouse">
				<a href="#" class="mouse-icon">
					<div class="mouse-wheel"><span class="ion-ios-arrow-up"></span></div>
				</a>
			</div>
		</div>
	<div class="row mb-5">
		<div class="col-md">
			<div class="ftco-footer-widget mb-4">
				<h2 class="ftco-heading-2">Stone AIsland</h2>
				<p>한국 폴리텍 성남캠퍼스</p>
				<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
					<!-- <li class="ftco-animate"><a href="#!"><span class="icon-twitter"></span></a></li> -->
					<li class="ftco-animate"><a href="https://www.facebook.com/" target="_blank"><span class="icon-facebook"></span></a></li>
					<li class="ftco-animate"><a href="https://www.instagram.com/" target="_blank"><span class="icon-instagram"></span></a></li>
				</ul>
			</div>
		</div>
		<div class="col-md">
			<div class="ftco-footer-widget mb-4 ml-md-5">
			<h2 class="ftco-heading-2">Menu</h2>
			<ul class="list-unstyled">
				<li><a href="/ShoppingMall-WEB/shop.jsp" class="py-2 d-block">판매 상품</a></li>
				<li><a href="/ShoppingMall-WEB/about.jsp" class="py-2 d-block">Made By</a></li>
				<!-- <li><a href="#" class="py-2 d-block">Journal</a></li> -->
				<li><a href="/ShoppingMall-WEB/contact.jsp" class="py-2 d-block">찾아오시는 길</a></li>
			</ul>
			</div>
		</div>
		<div class="col-md-4">
			<div class="ftco-footer-widget mb-4">
			<h2 class="ftco-heading-2">Help</h2>
				<div class="d-flex">
					<ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
						<li><a href="#!" class="py-2 d-block">이미 메뉴 2개 지웠는데 뭘 더 넣지</a></li>
						<li><a href="#!" class="py-2 d-block">환불 및 교환</a></li>
						<li><a href="#!" class="py-2 d-block">FAQ</a></li>
						<li><a href="#!" class="py-2 d-block">개인정보 정책</a></li>
					</ul>
					<ul class="list-unstyled">
						<!-- <li><a href="#" class="py-2 d-block">FAQs</a></li>
						<li><a href="#" class="py-2 d-block">Contact</a></li> -->
					</ul>
				</div>
			</div>
		</div>
		<div class="col-md">
			<div class="ftco-footer-widget mb-4">
			<h2 class="ftco-heading-2">Have a Questions?</h2>
				<div class="block-23 mb-3">
					<ul>
						<li><span class="icon icon-map-marker"></span><span class="text">경기도 성남시 수정로398<br>폴리텍 성남캠퍼스 드림관</span></li>
						<li><a href="#!"><span class="icon icon-phone"></span><span class="text">+82 031 739 4000</span></a></li>
						<li><a href="#!"><span class="icon icon-envelope"></span><span class="text">2403340111@office.kopo.ac.kr</span></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12 text-center">
			<p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This project is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://kopo.ac.kr/seongnam/content.do?menu=13149" target="_blank">Polytech</a>
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			</p>
		</div>
	</div>
	</div>
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