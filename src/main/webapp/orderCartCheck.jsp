<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int check = (Integer)(request.getAttribute("orderCheck"));
	System.out.println(check);
%>
<script>
	
	var chk = <%=check%>
	
	if(chk == 0){
		alert('오류가 발생했습니다.')
		location.href="cart.do"
	}else if(chk == 4){
		alert('포인트가 부족합니다. 마이페이지에서 충전 후 이용해주세요.')
		location.href="myPage.do"
	}else if(chk == 3){
		alert('구매가 완료되었습니다. 이용해주셔서 감사합니다.')
		location.href="orderCartView.do"
	}else if(chk == 2){
		alert('구매 중 오류가 발생했습니다. 잘못 사용된 포인트는 확인 후 재입금됩니다.')
		location.href="cart.do"
	}
	
</script>