<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="kr.ac.kopo.dao.GoodsDAObatis"%>
<%@page import="kr.ac.kopo.vo.GoodsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String code = request.getParameter("code");
	

	List<String> list = new ArrayList<>();
	list.add("S");
	list.add("M");
	list.add("L");
	list.add("XL");
	
	GoodsVO goods = new GoodsVO();
	
	for(int i = 0 ; i < 4 ; i++){
		goods.setItemCode(code);
		goods.setItemSize(list.get(i));
		GoodsDAObatis goodsbatis = new GoodsDAObatis();
		goodsbatis.insertgoods(goods);
	}
%>
<script>
	location.href="insertForm.jsp"
</script>