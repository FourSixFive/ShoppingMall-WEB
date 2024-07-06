<%@page import="kr.ac.kopo.dao.MemberDAObatis"%>
<%@page import="kr.ac.kopo.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("signID");
	String password = request.getParameter("signPWD");
	String name = request.getParameter("signName");
	String phone = request.getParameter("signPhone");
	int age = 2024-Integer.parseInt(request.getParameter("signSecurityNum1").substring(0, 4));
	char sex = ' ';
	int postcode = Integer.parseInt(request.getParameter("postcode"));
	String basicAddr = request.getParameter("basicAddr");
	String detailAddr = request.getParameter("detailAddr");
	
	String sexChk = request.getParameter("signSecurityNum2");
	if(sexChk.equals("1") || sexChk.equals("3")){
		sex = 'M';
	}else{
		sex = 'F';
	}
	
	MemberVO member = new MemberVO();
	
	member.setId(id);
	member.setPassword(password);
	member.setName(name);
	member.setPhone(phone);
	member.setAge(age);
	member.setSex(sex);
	member.setPostcode(postcode);
	member.setBasicAddr(basicAddr);
	member.setDetailAddr(detailAddr);
	member.setPoint(2000);
	
	System.out.println(member.toString());
	
	MemberDAObatis DAObatis = new MemberDAObatis();
	DAObatis.insertUserInfo(member);
%>
<script>
	alert('회원가입이 완료되었습니다.')
	location.href = 'index.jsp'
</script>