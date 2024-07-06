<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	var result = confirm("로그인이 필요한 서비스 입니다. 이동하시겠습니까?")
	
	if(result){
		location.href="loginForm.do"
	}else{
		location.href="StoneAIsland.do"
	}
</script>