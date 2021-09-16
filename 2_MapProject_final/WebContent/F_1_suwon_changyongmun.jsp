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
		src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3174.312009701083!2d127.0229530156489!3d37.28773847985111!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b5cb13dad1c51%3A0xffa55205511159d3!2z7LC966Oh66y4!5e0!3m2!1sko!2skr!4v1621569423634!5m2!1sko!2skr"
		width="40%" height="50%" style="border: 0;" allowfullscreen=""
		loading="lazy"></iframe>
	<input type="image" class="main_image"
		src="./image/suwon/suwon_changyongmun.png" width="430px" height="301px"
		onclick="location.href='introduceChangyongMoon.html'">
	<input type="image" src="./image/suwon/suwon_dongiforu.png" border="1"
		width="180px" height="100px"
		onclick="location.href='F_2_suwon_dongiforu.jsp'" class="btn_bt1"
		name="dongiforu">
	<input type="image" src="./image/suwon/suwon_paldalmun.png" border="1"
		width="180px" height="100px"
		onclick="location.href='F_3_suwon_paldalmun.jsp'" class="btn_bt2"
		name="paldalmun">

</body>
</html>
