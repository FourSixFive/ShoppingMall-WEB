<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Stone AIsland - MyPage</title>
<style>
	body {
		font-family: Arial, sans-serif;
		margin: 0;
		padding: 0;
	}
	
	.modal {
		position: fixed;
		display: none;
		justify-content: center;
		align-items: center;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		background-color: rgba(0, 0, 0, 0.4);
		opacity: 0;
		transform: scale(0.9);
		transition: opacity 0.3s ease, transform 0.3s ease;
	}
	
	.modal.show {
		display: flex;
		opacity: 1;
		transform: scale(1);
	}
	
	.modal_body {
		background-color: white;
		padding: 20px;
		border-radius: 8px;
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	}
	
	.btn-open-modal {
		padding: 10px 20px;
		background-color: #007bff;
		color: white;
		border: none;
		border-radius: 4px;
		cursor: pointer;
		margin: 20px;
	}
	
	.btn-open-modal:hover {
		background-color: #0056b3;
	}
	
	.btn-close-modal {
		padding: 10px 20px;
		background-color: #dc3545;
		color: white;
		border: none;
		border-radius: 4px;
		cursor: pointer;
		margin-top: 20px;
	}
	
	.btn-close-modal:hover {
		background-color: #c82333;
	}
	
	/* 모달 내 포인트 옵션 스타일 */
	.point-options {
		display: grid;
		grid-template-columns: repeat(3, 1fr);
		grid-gap: 10px;
	}
	
	.point-option {
		text-align: center;
	}
	
	.btn-point {
		padding: 10px 20px;
		background-color: #dbcc8f;
		color: white;
		border: none;
		border-radius: 4px;
		cursor: pointer;
		margin: 10px;
	}
	
	.btn-point:hover {
		background-color: #c2b280;
	}
	
	.addPointBtn {
		display: inline-block;
		padding: 10px 20px;
		background-color: #dbcc8f;
		color: white;
		text-decoration: none; /* 링크 텍스트 밑줄 제거 */
		border-radius: 4px;
		border: none;
		cursor: pointer;
		text-align: center;
	}
	
	/* 버튼 호버 효과 */
	.addPointBtn:hover {
		background-color: #c2b280;
	}




    #pointForm {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        background-color: #dbcc8f;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    #pointSelect {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        font-size: 16px;
        border: none;
        background-color: #FFFFFF;
        border-radius: 4px;
        box-sizing: border-box;
    }

    #purchaseButton {
        display: block;
        width: 100%;
        padding: 10px;
        font-size: 16px;
        background-color: #0056b3;
        color: #FFFFFF;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    #purchaseButton:hover {
        background-color: #007bff;
    }
</style>
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
<script>

	let checkForm = function(){
		
		let f = document.signUpForm

		if(isNull(f.Name, '이름을 입력하세요'))return false
		
		if(isNull(f.Phone, '번호를 입력하세요'))return false
		
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
	
</script>
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
						<span class="mr-2">MyPage</span>
					</p>
					<h1 class="mb-0 bread">My Page</h1>
				</div>
			</div>
		</div>
	</div>

	<div id="modal" class="modal">
		<div id="modal_body" class="modal_body" style="text-align: center;">
			<h2>포인트 충전</h2>
			<br>
			<div class="point-options">
				<form id="pointForm" action="addPoint.jsp" method="post">
				 	<h2 style="display:flex; text-align: center; color: #FFFFFF;">포인트 구매</h2>
					<select id="pointSelect" name="point">
						<option value="300000">300,000p</option>
						<option value="500000">500,000p</option>
						<option value="1000000">1,000,000p</option>
						<option value="3000000">3,000,000p</option>
						<option value="5000000">5,000,000p</option>
						<option value="10000000">10,000,000p</option>
					</select>
					<button id="purchaseButton" type="submit">포인트 구매</button>
				</form>
			</div>
		</div>
		<div>
			<button id="closeModalBtn">X</button>
		</div>
	</div>

	<section class="ftco-section ftco-degree-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 ftco-animate">
					<h2>회원정보</h2>

					<form name="userForm" onsubmit="return checkForm()" action="#!"
						class="bg-white p-5 contact-form" method="post">
						<div class="form-group" style="display: flex;">
							<input name="Id" id="Id" type="text" class="form-control"
								placeholder="${ requestScope.myPageUser.id }"
								style="width: 200px; border-width: 0;" readonly>
						</div>
						<div class="form-group">
							<input name="Name" type="text" class="form-control"
								placeholder="${ requestScope.myPageUser.name }"
								style="width: 200px; border-width: 0 0 1px;">
						</div>
						<div class="form-group">
							<input name="Phone" id="Phone" type="text" pattern="[0-9]+"
								class="form-control"
								placeholder="${ requestScope.myPageUser.phone }"
								style="width: 200px; border-width: 0 0 1px;">
						</div>
						<div class="form-group">
							<input name="email" id="email" type="text"
								class="form-control"
								placeholder="${ requestScope.myPageUser.email }"
								style="width: 200px; border-width: 0 0 1px;">
						</div>
						<div class="form-group" style="display: flex;">
							<input type="text" name="postcode" id="sample6_postcode"
								class="form-control"
								placeholder="${ requestScope.myPageUser.postcode }"
								style="width: 200px; border-width: 0 0 1px;">&emsp; <input
								type="button" onclick="sample6_execDaumPostcode()"
								value="우편번호 찾기">
						</div>
						<div>
							<input type="text" name="basicAddr" id="sample6_address"
								class="form-control"
								placeholder="${ requestScope.myPageUser.basicAddr }"
								style="width: 350px; border-width: 0 0 1px;"> <input
								type="text" name="detailAddr" id="sample6_detailAddress"
								class="form-control"
								placeholder="${ requestScope.myPageUser.detailAddr }"
								style="width: 350px; border-width: 0 0 1px;">
						</div>
						<div class="form-group" style="display: flex;">
							<input type="text" class="form-control"
								placeholder="보유 포인트 : <fmt:formatNumber value="${ requestScope.myPageUser.point }" type="number" groupingUsed="true" />p"
								style="border-width: 0;" readonly>
						</div>
						<br>
						<div class="form-group" style="display: inline-block;">
							<input type="submit" value="정보수정"
								class="btn btn-primary py-3 px-5">
						</div>
						&emsp;
						<div class="form-group" style="display: inline-block;">
							<button id="addPointBtn" type="button"
								class="btn btn-primary py-3 px-5">포인트 충전</button>
						</div>
					</form>

					<div class="pt-5 mt-5"></div>
				</div>
				<!-- .col-md-8 -->
				<div class="col-lg-4 sidebar ftco-animate">

					<!-- 검색박스 -->
					<!-- <div class="sidebar-box">
                        <form action="#" class="search-form">
                            <div class="form-group">
                                <span class="icon ion-ios-search"></span> <input type="text" class="form-control" placeholder="Type a keyword and hit enter">
                            </div>
                        </form>
                    </div> -->
					<!-- 검색박스 -->

					<div class="sidebar-box ftco-animate">
						<h3 CLASS="heading">회원정보</h3>
						<ul class="categories">
							<li>회원정보</li>
							<li><a href="cart.do">장바구니 [${ requestScope.basketCnt }]</a></li>
							<li><a href="orderCartView.do">주문목록 조회 [${ sessionScope.orderCartCnt }]</a></li>
							<!-- <li><a href="#!">회원탈퇴</a></li> -->
						</ul>
					</div>

					<div class="sidebar-box ftco-animate">
						<h3 class="heading">stone aisland</h3>
						<p>
							배송 시간 : 09:00 ~ 18:00<br> 전 제품 무료배송<br>(대한민국은 추가배송료 +
							&#8361; 2,147,483,647)
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- .section -->

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
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    const modal = document.getElementById('modal');
    const btnOpenModal = document.getElementById('addPointBtn');
    const btnCloseModal = document.getElementById('closeModalBtn'); // 모달 내부의 닫기 버튼 id 추가

    // "포인트 충전" 버튼 클릭 시 모달 열기
    btnOpenModal.addEventListener("click", () => {
        modal.style.display = "flex"; // 모달을 보이도록 설정
        setTimeout(() => {
            modal.classList.add("show"); // show 클래스를 추가하여 모달을 보이게 함
        }, 10); // 소규모 지연을 추가하여 전환 효과가 적용되도록 함
    });

    // 모달 내부의 닫기 버튼 클릭 시 모달 닫기
    btnCloseModal.addEventListener("click", () => {
        closeModal();
    });

    // 모달 바깥 영역 클릭 시 모달 닫기
    modal.addEventListener("click", (event) => {
        if (event.target === modal) {
            closeModal();
        }
    });

    // 모달 닫기 함수 정의
    function closeModal() {
        modal.classList.remove("show"); // show 클래스 제거하여 모달을 숨김
        setTimeout(() => {
            modal.style.display = "none"; // 모달을 숨기도록 설정
        }, 300); // 전환 기간과 일치하도록 함
    }
    </script>
</body>
</html>