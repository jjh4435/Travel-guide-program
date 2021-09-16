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
		src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d104357.70878085413!2d129.10355955978758!3d35.17710585706158!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35688d9fdaeda715%3A0x21c4cd40510865a5!2z67aA7IKw6rSR7Jet7IucIO2VtOyatOuMgOq1rA!5e0!3m2!1sko!2skr!4v1621574373593!5m2!1sko!2skr"
		width="40%" height="50%" style="border: 0;" allowfullscreen=""
		loading="lazy"></iframe>
	<input type="image" class="main_image"
		src="./image/busan/busan_haeundae.png" width="430px" height="301px"
		onclick="location.href='introduceHaUnDae.html'">
	<input type="image" src="./image/busan/busan_jenpocafekeori.png"
		border="1" width="180px" height="100px"
		onclick="location.href='G_2_busan_jenpocafekeori.jsp'" class="btn_bt1"
		name="jenpocafekeori">
	<input type="image" src="./image/busan/busan_siminPark.png" border="1"
		width="180px" height="100px"
		onclick="location.href='G_3_busan_siminpark.jsp'" class="btn_bt2"
		name="siminPark">

</body>
</html>
