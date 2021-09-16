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
		src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3174.626073523248!2d127.01840111564863!3d37.28029317985249!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b434a5a1f71fb%3A0x9022062e8f1f8713!2z64-Z7J207Y-s66Oo!5e0!3m2!1sko!2skr!4v1621569607849!5m2!1sko!2skr"
		width="40%" height="50%" style="border: 0;" allowfullscreen=""
		loading="lazy"></iframe>
	<input type="image" class="main_image"
		src="./image/suwon/suwon_dongiforu.png" width="430px" height="301px"
		onclick="location.href='introduceDongiForu.html'">
	<input type="image" src="./image/suwon/suwon_changyongmun.png"
		border="1" width="180px" height="100px"
		onclick="location.href='F_1_suwon_changyongmun.jsp'" class="btn_bt1"
		name="changyongmun">
	<input type="image" src="./image/suwon/suwon_paldalmun.png" border="1"
		width="180px" height="100px"
		onclick="location.href='F_3_suwon_paldalmun.jsp'" class="btn_bt2"
		name="paldalmun">

</body>
</html>
