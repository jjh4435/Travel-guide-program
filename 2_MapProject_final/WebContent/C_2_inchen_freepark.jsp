<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<style>
input.main_image {
	position: absolute;
	left: 209pt;
	top: 160pt;
}

iframe.nav {
	position: absolute;
	left: 730px;
	top: 210px;
}

input.btn_bt1 {
	position: absolute;
	left: 505px;
	top: 560px;
}

input.btn_bt2 {
	position: absolute;
	left: 300px;
	top: 560px;
}
</style>

<head>
<meta charset="UTF-8">
<%@ include file="A_Map_Main.jsp"%>
<link rel="stylesheet" href="./B_1_design.css">
<title>Insert title here</title>
</head>
<body>
	<iframe class="nav"
		src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3166.3768941864887!2d126.61957375122213!3d37.47543147971593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b7be6135a3c6d%3A0x71d3452689db5987!2z7J6Q7Jyg6rO17JuQ!5e0!3m2!1sko!2skr!4v1621563595278!5m2!1sko!2skr"
		width="40%" height="50%" style="border: 0;" allowfullscreen=""
		loading="lazy"></iframe>
	<input type="image" class="main_image"
		src="./image/incheon/incheon_freepark.png" width="430px" height="301px"
		onclick="location.href='introduceInchenFreePark.html'">
	<input type="image" src="./image/incheon/incheon_centrollpark.png"
		border="1" width="180px" height="100px"
		onclick="location.href='C_1_incheon_centrollpark.jsp'" class="btn_bt1"
		name="centrollparkk">
	<input type="image" src="./image/incheon/incheon_park.png" border="1"
		width="180px" height="100px" onclick="location.href='C_3_inchen_park.jsp'"
		class="btn_bt2" name="park">

</body>
</html>