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
		src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.7867929157587!2d128.89444335123!3d37.79503607965649!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3561e425a612cebd%3A0x3a5c5f3c167b57d5!2z6rK97Y-s64yA!5e0!3m2!1sko!2skr!4v1621565344053!5m2!1sko!2skr"
		width="40%" height="50%" style="border: 0;" allowfullscreen=""
		loading="lazy"></iframe>
	<input type="image" class="main_image"
		src="./image/kangwon/kangwon_kyengpodae.png" width="430px" height="301px"
		onclick="location.href='introduceKyengpoDae.html'">
	<input type="image"
		src="./image/kangwon/kangwon_kyengpobutggotchukje.png" border="1"
		width="180px" height="100px"
		onclick="location.href='D_2_kyengwon_kyengpobutggotchukje.jsp'"
		class="btn_bt1" name="kyengpobutggotchukje">
	<input type="image" src="./image/kangwon/kangwon_kangmunhaebyen.png"
		border="1" width="180px" height="100px"
		onclick="location.href='D_3_kyengwon_kangmunheabyen.jsp'"
		class="btn_bt2" name="kangmunhaebyen">

</body>
</html>
