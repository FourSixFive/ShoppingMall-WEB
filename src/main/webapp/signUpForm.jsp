<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Stone AIsland - Sign Up</title>
<style>
	input:invalid{
		border: 1px solid red;
	}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

	var idCheckCheck = 0;
	
	let isNull = function(obj, msg) {
		if(obj.value == ''){
			alert(msg)
			obj.focus()
			return true
		}
		return false
	}
	
	let checkForm = function(){
		
		let f = document.signUpForm
		
		if(idCheckCheck == 0){
			alert('아이디 중복여부를 확인하세요.')
			document.signUpForm.checkid.focus()
			return false
		}
		
		if(isNull(f.signID, '아이디를 입력하세요'))return false
		
		if((f.signID == "") || (f.signID == null)){
			alert('아이디를 입력하세요')
			f.signID.focus()
			return false
		}
		
		if(isNull(f.signPWD, '패스워드를 입력하세요'))return false
		
		if(isNull(f.signName, '이름을 입력하세요'))return false
		
		if(isNull(f.signPhone, '번호를 입력하세요'))return false
		
		if(isNull(f.signSecurityNum1, '생일을 입력하세요'))return false
		
		if(isNull(f.postcode, '우편번호를 입력하세요'))return false
		
		if(isNull(f.basicAddr, '주소를 입력하세요'))return false
		
		if(isNull(f.detailAddr, '주소를 입력하세요'))return false
		
		var inputPhone = document.getElementById("signPhone");
		var phoneLength = 11;
        if(inputPhone.value.length != phoneLength){
			alert("전화번호 형식이 맞지 않습니다.");
			f.signPhone.focus()
			return false;
		}
		
		var inputSecurityNumber1 = document.getElementById("signSecurityNum1");
        var dateLength = 8;
        if(inputSecurityNumber1.value.length != dateLength){
        	alert("생년월일 형식이 맞지 않습니다.");
        	f.signSecurityNum1.focus()
        	return false;
        }

        var inputSecurityNumber2 = document.getElementById("signSecurityNum2");
        var dateLength = 1;
        if(inputSecurityNumber2.value.length != dateLength){
        	alert("생년월일 형식이 맞지 않습니다.");
        	f.signSecurityNum2.focus()
        	return false;
        }
        
		return true
	}
	
	function sample6_execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	
	        	var addr = '';
	            var extraAddr = '';
	
	            if (data.userSelectedType === 'R') {
	                addr = data.roadAddress;
	            } else {
	                addr = data.jibunAddress;
	            }
	
	            if(data.userSelectedType === 'R'){
	
	            	if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraAddr += data.bname;
	                }
	
	            	if(data.buildingName !== '' && data.apartment === 'Y'){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	
	            	if(extraAddr !== ''){
	                    extraAddr = ' (' + extraAddr + ')';
	                }
	            }
	
	            document.getElementById('sample6_postcode').value = data.zonecode;
	            document.getElementById("sample6_address").value = addr;
	            document.getElementById("sample6_detailAddress").focus();
	        }
	    }).open();
	}
		
	function checkid1(){
		
		var signID = $('#signID').val()

		$.ajax({
			url : 'checkId.jsp',
			type : 'POST',
			data : {
				id : signID
			},
			dataType : 'json',
			success : function(response){
				if(response.exists){
					alert('이미 존재하는 ID 입니다. 새로운 ID를 입력하세요.')
				}else{
					alert('사용 가능한 ID 입니다.')
					idCheckCheck = 1;
				}
			},
			error : function(){
				alert('ajax 오류');
			}
		})
	}

</script>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800"
	rel="stylesheet">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body class="goto-here">
	
	<div>
		<jsp:include page="/include/topMenu.jsp"></jsp:include>
	</div>

	<div class="hero-wrap hero-bread"
		style="background-image: url('images/bg_6.jpg');">
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<p class="breadcrumbs">
						<span class="mr-2">Sign Up</span>
					</p>
					<h1 class="mb-0 bread">Sign Up</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section contact-section bg-light">
		<div class="container" style="width:600px;">
			<form name="signUpForm" onsubmit="return checkForm()" action="signUp.jsp" class="bg-white p-5 contact-form" method="post">
				<div class="form-group" style="display:flex;">
					<input name="signID" id="signID" type="text" class="form-control" placeholder="ID">&emsp;
					<input name="checkid" id="checkid" type="button" onclick="checkid1()" value="&emsp;중복체크&emsp;">
				</div>
				<div class="form-group">
					<input name="signPWD" type="password" class="form-control" placeholder="Password">
				</div>
				<div class="form-group">
					<input name="signName" type="text" class="form-control" placeholder="이름을 입력하세요 ex) 홍길동">
				</div>
				<div class="form-group">
					<input name="signPhone" id="signPhone" type="text" pattern="[0-9]+" class="form-control" placeholder="전화번호를 입력하세요 ex) 01012123434">
				</div>
				<div class="form-group" style="display: flex;">
					<input name="signEmail" type="text" class="form-control" placeholder="E-mail을 입력하세요" style="width: 300px;"><span style="font-size: 1.5em;">&emsp;@&emsp;</span>
					<select name="signDomain">
						<option value="naver.com">naver.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="daum.net">daum.net</option>
					</select>
				</div>
				<div class="form-group" style="display:flex;">
					<input name="signSecurityNum1" id="signSecurityNum1" type="text" pattern="[0-9]+" class="form-control" placeholder="생일을 입력하세요 ex) 19980101" style="width: 300px;">
					<span style="font-size: 1.5em;">&nbsp;-&nbsp;</span>
					<input name="signSecurityNum2" id="signSecurityNum2" type="password" pattern="[0-9]+" class="form-control" style="width: 30px;">
					<span style="font-size: 1.5em;">&nbsp;● ● ● ● ● ●</span>
				</div>
				<div class="form-group" style="display:flex;">
					<input type="text" name="postcode" id="sample6_postcode" class="form-control" placeholder="우편번호">&emsp;
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
				</div>
				<div>
					<input type="text" name="basicAddr" id="sample6_address" class="form-control" placeholder="주소">
					<input type="text" name="detailAddr" id="sample6_detailAddress" class="form-control" placeholder="상세주소">
				</div>
				<br>
				<div class="form-group" style="display:flex;">
					<input type="submit" value="Sign Up"
						class="btn btn-primary py-3 px-5">
				</div>
			</form>
		</div>
	</section>
	
	<footer>
		<jsp:include page="/include/footer.jsp"></jsp:include>
	</footer>

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<style>
	  .wrong_text{font-size:1rem;color:#f44e38;letter-spacing:-.2px;font-weight:300;margin:8px 0 2px;line-height:1em;display:none}
	</style>
</html>