<%@page import="kr.ac.kopo.vo.GoodsVO"%>
<%@page import="kr.ac.kopo.dao.GoodsDAObatis"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String Code = request.getParameter("itemCode");
	String id = request.getParameter("userID");
	
	pageContext.setAttribute("id", id);

	if(id != null){
		GoodsDAObatis goodsbatis = new GoodsDAObatis();
		GoodsVO goods = new GoodsVO();
		goods = goodsbatis.singleItem(Code);
		goods.setBrandName(id);
		
		int insertCheck = goodsbatis.insertBasket(goods);
		
		pageContext.setAttribute("insertCheck", insertCheck);
		pageContext.setAttribute("returnCode", Code);
	}
%>
<script>

	var idCheck = '${ pageScope.id }'
	var insertCheck = ${ pageScope.insertCheck }
	
	console.log(idCheck)
	console.log(insertCheck)
	
	
	if((idCheck === null) || (insertCheck === 0)){
		alert('로그인 정보가 만료되었습니다.')
		location.href="index.jsp"
	}
	
	if(insertCheck == 1){
		var result = confirm('장바구니에 등록되었습니다. 바로 확인하시겠습니까?')
		if(result){
			location.href="cart.jsp"
		}else{
			location.href="product-single.jsp?itemCode=${ pageScope.returnCode }"
		}
	}
	
</script>