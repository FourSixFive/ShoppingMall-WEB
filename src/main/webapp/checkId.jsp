<%@page import="java.io.PrintWriter"%>
<%@page import="kr.ac.kopo.vo.MemberVO"%>
<%@page import="kr.ac.kopo.dao.MemberDAObatis"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	MemberDAObatis memberbatis = new MemberDAObatis();
	MemberVO member = new MemberVO();
	
	member = memberbatis.userInfo(id);
	
	boolean exists = (member != null);
	
	String jsonResponse;
    if (exists) {
        jsonResponse = "{\"exists\": true}";
    } else {
        jsonResponse = "{\"exists\": false}";
    }

    response.setContentType("application/json");
    PrintWriter outs = response.getWriter();
    outs.print(jsonResponse);
    outs.flush();
%>