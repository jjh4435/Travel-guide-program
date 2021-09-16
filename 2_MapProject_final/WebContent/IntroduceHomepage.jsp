<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈페이지 소개</title>
<link rel="stylesheet" href="./IntroduceHomepage.css">
</head>
<body>
	<jsp:include page="header.jsp"/>

	
	<div class="slideshow-container" >
		<div class="mySlides fade">
  			<img src="image/travel(1).jpg" style="float: left;width: 100%; height: 400px;">
		</div>

		<div class="mySlides fade">
			<img src="image/seoul/seoul_main.png" style="float: left;width: 100%; height: 400px;">
		</div>

		<div class="mySlides fade">
			<img src="image/incheon/incheon_main.png" style="float: left;width: 100%; height: 400px;">
		</div>

		<div class="mySlides fade">
			<img src="image/daegu/daegu_main.png" style="float: left;width: 100%; height: 400px;">
		</div>

		<div class="mySlides fade">
			<img src="image/kangwon/kangwon_main.png" style="float: left;width: 100%; height: 400px;">
		</div>

		<div class="mySlides fade">
			<img src="image/suwon/suwon_main.png" style="float: left;width: 100%; height: 400px;">
		</div>
	</div>
	
	<br><br>
	<div style="text-align:center">
		<span class="dot"></span> 
		<span class="dot"></span> 
		<span class="dot"></span> 
		<span class="dot"></span> 
		<span class="dot"></span> 
		<span class="dot"></span> 
	
	</div>
	<span id="faq-title" style="float: left">홈페이지 정보 : </span>
	<br><br>한국을 여행하는 사람이라면 꼭 만나야 할 여행지와 숨어있는 
	장소를 소개해 주기 위해 제작한 홈페이지입니다.<br><br>
	홈페이지의 구성으로는 로그인 페이지, 회원가입 페이지, 메인 페이지, 지역 보기 페이지, 즐겨찾기 페이지, 
	홈페이지 소개 페이지가 있습니다 자세한 내용은 아래를 참조해 주시시기 바랍니다.
	
	<div class="faq-content">
		<button class="question" id="que-1">
			<span id="que-1-toggle">+</span><span>메인 페이지</span>
		</button>
		<div class="answer" id="ans-1" style="height:200px">
			<img src="./image/main1.PNG" style="width: 200px; height:200px;float: left">
			<img src="./image/main2.PNG" style="width: 200px; height:200px;float: left">
			메인 페이지에서는 지역을 선택하여 그 지역의 대표 
			관광지의 이미지와 소개를 하고 있고 지역이나 
			관광지를 선택하여 위치정보를 알 수 있게 하였습니다.
		</div>
	</div>

	

	<div class="faq-content">
		<button class="question" id="que-3">
			<span id="que-3-toggle">+</span><span>지역 찾기 페이지</span>
		</button>
		<div class="answer" id="ans-3" style="height:200px">
			<img alt="map_page" src="./image/MapPage.PNG"
			style="height:200px; float: left">
			지역 찾기 페이지는 자신이 원하는 지역의 정보를 
			입력하여 지역의 지도를 확인하는 페이지입니다.
		</div>
	</div>
	
	<div class="faq-content">
		<button class="question" id="que-2">
			<span id="que-2-toggle">+</span><span>즐겨찾기 페이지</span>
		</button>
		<div class="answer" id="ans-2" style="height:200px">
			<div class="slideshow-container" style="float:left">
	  			<img src="./image/bookmark1.PNG" style="height:200px;float: left">
			</div>
			즐겨찾기 페이지에서는 로그인 후 지역을 선택하여
			 선택한 지역을 저장하고 나 저장해놓은 지역 정보를 
			 삭제할 수 있습니다.
		</div>
	</div>
	
	<div class="faq-content">
		<button class="question" id="que-10">
			<span id="que-10-toggle">+</span><span>여행정보 페이지</span>
		</button>
		<div class="answer" id="ans-10" style="height:200px">
			<img alt="register_page" src="./image/find.PNG"
			style="width: 200px; height:200px; float: left">
			관광지에대한 코멘트를 입력하거나 삭제하는 페이지입니다.
		</div>
	</div>
	
	
	
	<div class="faq-content">
		<button class="question" id="que-9">
			<span id="que-9-toggle">+</span><span>코멘트 페이지</span>
		</button>
		<div class="answer" id="ans-9" style="height:200px">
			<img alt="register_page" src="./image/co.PNG"
			style="width: 200px; height:200px; float: left">
			관광지에대한 코멘트를 입력하거나 삭제하는 페이지입니다.
		</div>
	</div>

	<div class="faq-content">
		<button class="question" id="que-4">
			<span id="que-4-toggle">+</span><span>로그인 페이지</span>
		</button>
		<div class="answer" id="ans-4" style="height:200px">
			<img alt="login_page" src="./image/login.PNG"
			style="width: 200px; height:200px; float: left">
			로그인 페이지로 즐겨찾기 등록을 위해 아이디와 
			비밀번호를 입력하여 로그인하는 페이지입니다
		</div>
	</div>
	
	<div class="faq-content">
		<button class="question" id="que-5">
			<span id="que-5-toggle">+</span><span>회원가입 페이지</span>
		</button>
		<div class="answer" id="ans-5" style="height:200px">
			<img alt="register_page" src="./image/register.PNG"
			style="width: 200px; height:200px; float: left">
			로그인하기 위한 아이디가 존재하지 않을 시 
			아이디를 생성하기 위한 페이지입니다.
		</div>
	</div>

	
	
	<div class="faq-content">
		<button class="question" id="que-6">
			<span id="que-6-toggle">+</span><span>개발 배경</span>
		</button>
		<div class="answer" id="ans-6">여행지 선정 시 각 여행지의 관광지의 사진, 특산물, 특징,
		위치 등을 많은 정보를 효율적으로 전달하기 위해 개발하였습니다.</div>
	</div>
	<div class="faq-content">
		<button class="question" id="que-7">
			<span id="que-7-toggle">+</span><span>개발 목적</span>
		</button>
		<div class="answer" id="ans-7">관광지의 사진, 특징, 위치 등을 공유함으로
			간접적으로 관광지를 탐방하고 나아가 해당 관광지를 즐겨찾기 함으로써 휴일에 여행을 계획하는 국내 여행객이나 혹은 외국인
			관광객에게 해당 관광지에 대한 접근성을 높이는 것을 목표로 합니다.</div>
	</div>
	<div class="faq-content">
		<button class="question" id="que-8">
			<span id="que-8-toggle">+</span><span>개발자</span>
		</button>
		<div class="answer" id="ans-8">
			1)김범석 - 회원가입 페이지 기능 및 화면구현/여행 정보 페이지 구현<br>
			2)김정규 - 메인 페이지 기능 및 화면구현<br>
			3)노경민 - 지역보기 페이지 기능 및 화면 구현/즐겨찾기 기능 및 화면 구현/여행정보 초기화면 구현<br>
			4)정제헌 - 홈페이지 소개 기능 및 화면구현<br>
			5)최현지 - 로그인 페이지 기능 및 화면구현, DB 통합<br>
			6)허리나 - 코맨트 페이지 기능 및 화면구현<br>
			layout 수정, 기능 오류 수정 및 배포 - 공동<br>
		</div>
	</div>

	<footer>
		<div class="center"><br><Br>
			(42811)서울특별시 중구 공평로 76(동인동 1가) | 전화: 021.654.327.3881~3886<br>
			Copyright(c) SEOUL METROPOLITAN CITY.All rights reserved.<br>
			TOUR드림 컴트루 컴퍼니 고객상담: 1588-1253
			<br>
			본 홈페이지에 게시된 이메일주소의 자동 수집을 거부하며 이를 위반시<br>
			정보통신망법에 의해 처벌됨을 유념하시기 바랍니다.<br>
	
		</div>
	</footer>

	<script>
		const items = document.querySelectorAll('.question');

		function openCloseAnswer() {
			const answerId = this.id.replace('que', 'ans');

			if(document.getElementById(answerId).style.display === 'block') {
				document.getElementById(answerId).style.display = 'none';
				document.getElementById(this.id + '-toggle').textContent = '+';
			} else {
				document.getElementById(answerId).style.display = 'block';
				document.getElementById(this.id + '-toggle').textContent = '-';
			}
		}

		items.forEach(item => item.addEventListener('click', openCloseAnswer));
	</script>
	<script>
		var slideIndex = 0;
		showSlides();

		function showSlides() {
		    var i;
		    var slides = document.getElementsByClassName("mySlides");
		    var dots = document.getElementsByClassName("dot");
		    for (i = 0; i < slides.length; i++) {
		       slides[i].style.display = "none";  
		    }
		    slideIndex++;
		    if (slideIndex > slides.length) {slideIndex = 1}    
		    for (i = 0; i < dots.length; i++) {
		        dots[i].className = dots[i].className.replace(" active", "");
		    }
		    slides[slideIndex-1].style.display = "block";  
		    dots[slideIndex-1].className += " active";
		    setTimeout(showSlides, 2000); // 2초마다 이미지 체인지
		}
	</script>


</body>
</html>