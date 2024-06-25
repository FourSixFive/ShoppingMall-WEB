<%@page import="java.util.StringTokenizer"%>
<%@page import="kr.ac.kopo.dao.GoodsDAObatis"%>
<%@page import="kr.ac.kopo.vo.GoodsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* String itemCode = request.getParameter("itemCode");
	String itemName = request.getParameter("itemName");
	int itemPrice = Integer.parseInt(request.getParameter("itemPrice")); */
	String itemAddr = request.getParameter("itemAddr");
	String itemType = request.getParameter("itemType");
	String total = request.getParameter("total");
	StringTokenizer st = new StringTokenizer(total,"\t");
	String itemName = st.nextToken();
	int itemPrice = Integer.parseInt(st.nextToken());
	String itemCode = st.nextToken();
	
	GoodsVO goods = new GoodsVO();
	
	goods.setItemCode(itemCode);
	goods.setItemName(itemName);
	goods.setItemType(itemType);
	goods.setItemPrice(itemPrice);
	goods.setItemAddr(itemAddr);
	
	GoodsDAObatis goodsbatis = new GoodsDAObatis();
	goodsbatis.insertgoods(goods);
%>
<script>
	location.href="insertForm.jsp"
</script>