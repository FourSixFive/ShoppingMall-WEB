<%@page import="kr.ac.kopo.vo.MemberVO"%>
<%@page import="kr.ac.kopo.vo.GoodsVO"%>
<%@page import="kr.ac.kopo.dao.GoodsDAObatis"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String size = request.getParameter("selectSize");
	int quantity = Integer.parseInt(request.getParameter("quantity"));

	String code = request.getParameter("itemCode");
	String id = request.getParameter("userid");
	
	switch(size){
	case "Small":
		size = "S";
		break;
	case "Medium":
		size = "M";
		break;
	case "Large":
		size = "L";
		break;
	case "Extra Large":
		size = "XL";
		break;
	case "None":
		size = "XX";
		break;
	}
	
	GoodsVO goods = new GoodsVO();
	GoodsDAObatis goodsbatis = new GoodsDAObatis();
	goods = goodsbatis.singleItem(code);
	goods.setUserId(id);
	goods.setItemSize(size);
	goods.setItemQuantity(quantity);
	
	goodsbatis.insertBasket(goods);
	
	
%>
<script>
	location.href="cart.do"
</script>