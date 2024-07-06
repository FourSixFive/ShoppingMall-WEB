<%@page import="kr.ac.kopo.dao.BoardDAObatis"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int no = Integer.parseInt(request.getParameter("reviewNo"));
	String itemCode = request.getParameter("itemCode");
	System.out.println(no);
	
	BoardDAObatis boardbatis = new BoardDAObatis();
	
	boardbatis.deleteReview(no);
%>
<script>
	location.href="productSingle.do?itemCode=<%=itemCode%>"
</script>