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
		src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3262.048688489547!2d129.06168541554078!3d35.155406466236066!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3568eb64c08aeb61%3A0x8a52f6f4014f4ef9!2z7KCE7Y-sIOy5tO2OmOqxsOumrA!5e0!3m2!1sko!2skr!4v1621574466466!5m2!1sko!2skr"
		width="40%" height="50%" style="border: 0;" allowfullscreen=""
		loading="lazy"></iframe>
	<input type="image" class="main_image"
		src="./image/busan/busan_jenpocafekeori.png" width="430px" height="301px"
		onclick="location.href='introducejenpocafekeori.html'">
	<input type="image" src="./image/busan/busan_haeundae.png" border="1"
		width="180px" height="100px"
		onclick="location.href='G_1_busan_haeundae.jsp'" class="btn_bt1"
		name="haeundae">
	<input type="image" src="./image/busan/busan_siminPark.png" border="1"
		width="180px" height="100px"
		onclick="location.href='G_3_busan_siminpark.jsp'" class="btn_bt2"
		name="siminPark">

</body>
</html>
