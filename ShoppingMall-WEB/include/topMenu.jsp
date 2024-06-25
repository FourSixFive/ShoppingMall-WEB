<%@page import="kr.ac.kopo.vo.GoodsVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.ac.kopo.dao.GoodsDAObatis"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="kr.ac.kopo.dao.MemberDAObatis"%>
<%@page import="kr.ac.kopo.vo.MemberVO"%>
<%
	request.setCharacterEncoding("utf-8");

	if(request.getParameter("userID")!=null){
		String userID = (String)request.getParameter("userID");
		
		MemberDAObatis memberbatis = new MemberDAObatis();
		MemberVO userInfo = memberbatis.userInfo(userID);
		
		session.setAttribute("userInfo", userInfo);
		
		GoodsDAObatis goodsbatis = new GoodsDAObatis();
		List<GoodsVO> goodsList = goodsbatis.basketinfo(userID);
		
		session.setAttribute("goodsList", goodsList);
		session.setAttribute("basketCnt", goodsList.size());
	}
%>
<div class="py-1 bg-black">
	<div class="container">
		<div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
			<div class="col-lg-12 d-block">
				<div class="row d-flex">
					<div class="col-md pr-4 d-flex topper align-items-center">
						<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						<span class="text">+82 031 739 4000</span>
					</div>
					<div class="col-md pr-4 d-flex topper align-items-center">
						<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
						<span class="text">2403340111@office.kopo.ac.kr</span>
					</div>
					<div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
						<span class="text">Stone AIsland &amp; Online Commerce</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="/ShoppingMall-WEB/StoneAIsland.do">Stone AIsland</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> Menu
		</button>
		
		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<c:if test="${ not empty sessionScope.userInfo }">
					<li class="nav-item active"><a href="/ShoppingMall-WEB/logout.do" class="nav-link">Logout</a></li>
				</c:if>
				<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#!" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Catalog</a>
				<div class="dropdown-menu" aria-labelledby="dropdown04">
					<a class="dropdown-item" href="/ShoppingMall-WEB/shop.do">판매 상품</a>
					<!-- <a class="dropdown-item" href="/ShoppingMall-WEB/product-single.jsp">Single Product</a> -->
					<a class="dropdown-item" href="/ShoppingMall-WEB/cart.do">장바구니</a>
					<a class="dropdown-item" href="/ShoppingMall-WEB/checkout.do">주문/배송 조회</a>
				</div>
			</li>
				<li class="nav-item"><a href="/ShoppingMall-WEB/about.do" class="nav-link">Made By</a></li>
				<li class="nav-item"><a href="/ShoppingMall-WEB/contact.do" class="nav-link">찾아오시는 길</a></li>
				<!-- <li class="nav-item"><a href="/ShoppingMall-WEB/blog.jsp" class="nav-link">Blog</a></li> -->
				
				<c:if test="${ not empty sessionScope.userInfo }">
					<li class="nav-item cta cta-colored">
					<a href="/ShoppingMall-WEB/cart.jsp" class="nav-link"><span class="icon-shopping_cart"></span>[${ sessionScope.basketCnt }]</a></li>
				</c:if>
				<c:if test="${ empty sessionScope.userInfo }">
					<li class="nav-item"><a href="/ShoppingMall-WEB/login.do" class="nav-link">Login</a></li>
				</c:if>
			</ul>
		</div>
	</div>
</nav>