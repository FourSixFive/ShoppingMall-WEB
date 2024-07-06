<%@page import="kr.ac.kopo.dao.BoardDAObatis"%>
<%@page import="kr.ac.kopo.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String content = request.getParameter("review");
	String id = request.getParameter("id");
	String itemCode = request.getParameter("itemCode");
	
	BoardVO board = new BoardVO();
	
	board.setId(id);
	board.setContent(content);
	board.setItemCode(itemCode);
	BoardDAObatis boardbatis = new BoardDAObatis();
	boardbatis.insertReview(board);
%>
<script>
	location.href="productSingle.do?itemCode=<%=itemCode%>"
</script>