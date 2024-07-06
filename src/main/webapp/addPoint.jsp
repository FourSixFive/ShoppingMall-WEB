<%@page import="kr.ac.kopo.dao.MemberDAObatis"%>
<%@page import="kr.ac.kopo.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	MemberVO member = (MemberVO)session.getAttribute("userInfo");
	
	int point = Integer.parseInt(request.getParameter("point"))+member.getPoint();
	member.setPoint(point);
	
	MemberDAObatis memberbatis = new MemberDAObatis();
	memberbatis.addPoint(member);
%>
<script>
	location.href="myPage.do"
</script>