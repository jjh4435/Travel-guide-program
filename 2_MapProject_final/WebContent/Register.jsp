<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>




<meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>여행가이드 프로그램</title>
    <link rel="stylesheet" href="./incheon.css">
    
    
<title>Map Project</title>

<style>

body { 
min-height: 100vh; /* 최소 높이를 지정 */
display: flex; 
flex-direction: column;
}


footer { 
margin-top: auto;/* 최소 높이 하단에서 자동으로 뻗어나가도록 설정 */ 
}

main {
margin 0 auto;
max-width: 80ch;
}

</style>



</head>
<body class = "Site">

	<br>

	<div id="header" style="text-align: center">
		<h1><a href="seoul.html"><span class="blind">Home</span></a></h1>
	</div>
 
    <br><hr><br><br>
    
     <div class="container" style="text-align: center">
               
		
		<form action = "register" method="post">
		<h4>아이디</h4><br>
		<input type = "text" name = "userId" id = "userId"  maxlength="42" style = "width: 400pt; height: 50pt;"><br><br>
		<h4>비밀번호</h4><br>
		<input type = "password" name =  "userPw" id = "userPw" maxlength="16" style = "width: 400pt; height: 50pt;"><br><br>
	<!-- 	<h4>비밀번호 재확인</h4><br>
		<input type= "password" name = "PwCheck" id = "PwCheck" maxlength="16" style = "width: 400pt; height: 50pt;"><br><br><br>  -->
		<h4>닉네임</h4><br>
		<input type = "text" name = "nickname" id = "nickname" style = "width: 400pt; height: 50pt;"><br><br>
		<h4>이름</h4><br>
		<input type = "text" name = "userName" id = "userName" style = "width: 400pt; height: 50pt;"><br><br>
		<h4>생년월일 [ex: 980123]</h4><br>
		<input type = "text" name = "sDate" id = "sDate" style = "width: 400pt; height: 50pt;"><br><br>
		<h4>이메일</h4><br>
		<input type = "email" name = "email" id = "email" style = "width: 400pt; height: 50pt;"><br><br>
		
		<h4>성별</h4><br>
			<select name = "gender" style="width: 400pt; height: 50pt;">
				<option value = "nope">성별</option>
				<option value = "male">남자</option>
				<option value = "female">여자</option>
				<option>선택안함</option>
			</select>
			
		<br><br><br>
		<input type = "submit" value = "가입하기" style="WIDTH: 400pt; HEIGHT: 50pt">
		</form>
		
		<br>
		
	</div>

        
 	




<footer>
	<hr>
       <div style="text-align: center">
            (42811)서울특별시 중구 공평로 76(동인동 1가) | 전화: 021.654.327.3881~3886<br>
            Copyright(c) SEOUL METROPOLITAN CITY.All rights reserved.<br>
            TOUR드림 컴트루 컴퍼니 고객상담: 1588-1253
            <br>
            본 홈페이지에 게시된 이메일주소의 자동 수집을 거부하며 이를 위반시<br>
            정보통신망법에 의해 처벌됨을 유념하시기 바랍니다.<br>
       </div>
</footer>


</body>
</html>