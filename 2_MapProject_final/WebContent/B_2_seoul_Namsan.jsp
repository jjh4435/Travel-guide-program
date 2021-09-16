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
		src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12652.218848534014!2d126.97221483425727!3d37.55377473812018!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca25ed54b2ce5%3A0x290c1db49e125cfa!2z64Ko7IKw!5e0!3m2!1sko!2skr!4v1621561675053!5m2!1sko!2skr"
		width="40%" height="50%" style="border: 0;" allowfullscreen=""
		loading="lazy"></iframe>
	<input type="image" class="main_image"
		src="./image/seoul/seoul_NamsanPark.png" width="430px"
			height="301px"
		onclick="location.href='introduceNamSanPark.html'">
	<input type="image" src="./image/seoul/seoul_chungyechen.png"
		border="1" width="180px" height="100px"
		onclick="location.href='B_1_seoul_chungyechen.jsp'" class="btn_bt1"
		name="chungyechen">
	<input type="image" src="./image/seoul/seoul_DobongSan.png" border="1"
		width="180px" height="100px"
		onclick="location.href='B_3_seoul_DobongSan.jsp'" class="btn_bt2"
		name="DobongSan">
</body>
</html>