<%@page import="kr.ac.kopo.vo.MemberVO"%>
<%@page import="kr.ac.kopo.dao.MemberDAObatis"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	MemberVO member = new MemberVO();
	MemberVO member2 = new MemberVO();
	MemberDAObatis memberbatis = new MemberDAObatis();
	
	member = (MemberVO)request.getAttribute("loginUserID");
	
	member2 = memberbatis.userInfo(member.getId());
	
	int chk = 1;
	
	if(member2 == null){
		chk = 0;
	}else{
		chk = 1;
	}
%>
<script>
	var chk = <%= chk %>
	if(chk === 0){
		var result = confirm("존재하지 않는 회원입니다. 회원가입 화면으로 이동하시겠습니까?")
		if(result){
			location.href="signUpForm.do"
		}else{
			location.href="StoneAIsland.do"
		}
	}else{
		alert("비밀번호가 다릅니다.")
		location.href="loginForm.do"
	}
</script>