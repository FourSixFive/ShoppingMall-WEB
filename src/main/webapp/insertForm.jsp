<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.onload = function() {
		document.insert.code.focus()
	}
</script>
</head>
<body>
	<br>
	<br>
	<br>
	<hr>
	<form action="insert.jsp" name="insert">
		아이템코드<input name="code" type="text"><br>
		아이템주소<input name="code" type="text"><br>
		상세정보<input name="code" type="text"><br>
		<input type="submit">
	</form>
</body>
</html>