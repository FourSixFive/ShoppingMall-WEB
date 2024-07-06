<%@page import="kr.ac.kopo.dao.MemberDAObatis"%>
<%@page import="kr.ac.kopo.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVO member = new MemberVO();
	member = (MemberVO)request.getAttribute("userInfo");
	session.setAttribute("userInfo", member);
%>
<script>
	location.href="StoneAIsland.do"
</script>
