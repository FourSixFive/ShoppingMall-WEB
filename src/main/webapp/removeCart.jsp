<%@page import="kr.ac.kopo.dao.GoodsDAObatis"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String itemCode = request.getParameter("itemCode");
	GoodsDAObatis goodsbatis = new GoodsDAObatis();
	
	goodsbatis.deleteBasket(itemCode);
%>
<script>
	alert('선택하신 물품이 제거되었습니다.')
	location.href="cart.do"
</script>