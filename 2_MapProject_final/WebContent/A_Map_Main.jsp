<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<style>
 div.main_image {
 width:100%;
 height:300px;
 }/* 크기 */

 div.main_image img{
 width:100%;
 height:100%;
 }
 div.label{
text-align:center;
 }
 
 img.nav{
 position:absolute;
 left:750px;
 top: 180px;
 }
 
 div.subimage img{
 
 width:48%;
 }
/* form.se{
 	position:absolute;
 	left: 280px;
 	top:120px;
 
 }
 form.finder{
 
	padding-left:290px;
} */

div.left_area{
	padding-left:290px;
	box-sizing:border-box;
	width:700px;
}




form.se{
 	position:absolute;
 	left: 390px;
 	top:190px;
 
 }
 form.finder{
 
	padding-left:290px;
}
 
 </style>	
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" href="./A_design.css">
</head>
<body>
	<body>
	
</body>


		
		<!-- <form action="map_process" class="se" method="post"  >
			<input type = "text" name="txtsearch">		
		</form> -->

		
		
			<form action="map_process" class="finder" method="post" >
			
				<%
				session.getAttribute("userId");
				String id_check = (String)session.getAttribute("userId");
				%>			
					
				<input type = "hidden" name = "id_check" value="<%= id_check%>">
				
				
				<div class="container">
					<div class="f-group">
							
						<label for="">country</label> <select name="slct1" id="slct1"
							onchange="populate(this.id,'slct2')">
							<option value="">---- 도/시 ----</option>
							<option value="서울">서울</option>
							<option value="인천">인천</option>
							<option value="수원">수원</option>
							<option value="강원">강원</option>
							<option value="대구">대구</option>
							<option value="부산">부산</option>
						</select>
					</div>
					<div class="f-group">
						<label for="">관광지</label> <select name="slct2" id="slct2"></select>
					</div>
				</div>


				<div>
					
					<input type="submit" name="search" value="검색" /> 
					<%
					String id = null;
					id = (String) session.getAttribute("userId");
					if (session.getAttribute("userId") != null){ %>
					<input type="submit" name="save" value="즐겨찾기" />
					<%}else{ %>
					<script>
					alert('로그인이 필요한 서비스입니다');
					location.href='Login.jsp';
					</script>
	
					<%} %>
						<input type = "text" name="txtsearch">
				</div>

			</form>
			<div class="left_area">
				<div class="main_image">
					<img src="./image/main/tour.jpg">

				</div>

				<div class="label">
					<label>추천관광지</label>
				</div>


				<div class="subimage">
					<img src="./image/main/map.png"> 
					<img src="./image/main/map.png">
				</div>
			</div>


			<img src="./image/main/map.png" class="nav" width="40%" height="50%">
			<br>
			<br>
			<br>
			<br>
			<br>
			
		


			<footer>
				<div class="center">
					<br>
					<br> (42811)서울특별시 중구 공평로 76(동인동 1가) | 전화:
					021.654.327.3881~3886<br> Copyright(c) SEOUL METROPOLITAN
					CITY.All rights reserved.<br> TOUR드림 컴트루 컴퍼니 고객상담: 1588-1253 <br>
					본 홈페이지에 게시된 이메일주소의 자동 수집을 거부하며 이를 위반시<br> 정보통신망법에 의해 처벌됨을
					유념하시기 바랍니다.<br>
				</div>
			</footer>
			<script>
				function populate(s1, s2) {
					var s1 = document.getElementById(s1);
					var s2 = document.getElementById(s2);

					s2.innerHTML = "";

					if (s1.value == "서울") {
						var optionArray = [ '도봉산|도봉산', '청계천|청계천', '남산공원|남산공원' ]
					} else if (s1.value == '인천') {
						var optionArray = [ '자유공원|자유공원', '인천 대공원|인천 대공원',
								'센티럴파크|센티럴파크' ]
					} else if (s1.value == '수원') {
						var optionArray = [ '팔달문|팔달문', '동이포루|동이포루', '창룡문|창룡문' ]
					} else if (s1.value == '강원') {
						var optionArray = [ '강릉 경포 벚꽃축제|강릉 경포 벚꽃축제',
								'강릉 강문해변|강릉 강문해변', '강릉경포대|강릉경포대' ]
					} else if (s1.value == '대구') {
						var optionArray = [ '동성로|동성로', '비슬산 국립공원|비슬산 국립공원',
								'팔공산|팔공산' ]
					} else if (s1.value == '부산') {
						var optionArray = [ '해운대|해운대', '전포카페거리|전포카페거리',
								'부산 시민공원|부산 시민공원' ]
					}

					for ( var option in optionArray) {
						var pair = optionArray[option].split("|");
						var newoption = document.createElement("option");

						newoption.value = pair[0];
						newoption.innerHTML = pair[1];
						s2.options.add(newoption);
					}

				}
			</script>
</body>
</html>