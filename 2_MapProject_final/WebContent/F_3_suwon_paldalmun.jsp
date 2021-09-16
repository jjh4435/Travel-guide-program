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
		src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3174.748760375892!2d127.01485351564868!3d37.27738437985312!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b43364c4b1209%3A0xf16d32ff75473e4!2z7YyU64us66y4!5e0!3m2!1sko!2skr!4v1621569670946!5m2!1sko!2skr"
		width="40%" height="50%" style="border: 0;" allowfullscreen=""
		loading="lazy"></iframe>
	<input type="image" class="main_image"
		src="./image/suwon/suwon_paldalmun.png" width="430px" height="301px"
		onclick="location.href='introducePaldalMoon.html'">
	<input type="image" src="./image/suwon/suwon_changyongmun.png"
		border="1" width="180px" height="100px"
		onclick="location.href='F_1_suwon_changyongmun.jsp'" class="btn_bt1"
		name="changyongmun">
	<input type="image" src="./image/suwon/suwon_dongiforu.png" border="1"
		width="180px" height="100px"
		onclick="location.href='F_2_suwon_dongiforu.jsp'" class="btn_bt2"
		name="dongiforu">

</body>
</html>
