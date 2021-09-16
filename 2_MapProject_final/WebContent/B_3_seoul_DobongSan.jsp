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
		src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15016.292673195532!2d127.0227200292233!3d37.70120883032648!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cbf177edc0bc3%3A0x1ae9a0955fd477cb!2z64-E67SJ7IKw!5e0!3m2!1sko!2skr!4v1621562982597!5m2!1sko!2skr"
		width="40%" height="50%" style="border: 0;" allowfullscreen=""
		loading="lazy">
	</iframe>
	
	<input type="image" class="main_image"
		src="./image/seoul/seoul_DobongSan.png" width="430px" height="301px"
		onclick="location.href='introduceDobongSan.html'">
		
	<input type="image" class="btn_bt1" 
		src="./image/seoul/seoul_chungyechen.png" border="1" width="180px" height="100px"
		onclick="location.href='B_1_seoul_chungyechen.jsp'" name="chungyechen">
		
	<input type="image" class="btn_bt2"
		src="./image/seoul/seoul_NamsanPark.png" border="1" width="180px" height="100px" 
		onclick="location.href='B_2_seoul_Namsan.jsp'" name="NamsanPark">
		

	</body>
</html>