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
		src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7704.534540833255!2d128.5222848179508!3d35.717419523885255!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3565f8567baeb239%3A0xf7b35e67d0e974cd!2z67mE7Iqs7IKw6rWw66a96rO17JuQ!5e0!3m2!1sko!2skr!4v1621572459267!5m2!1sko!2skr"
		width="40%" height="50%" style="border: 0;" allowfullscreen=""
		loading="lazy"></iframe>
	<input type="image" class="main_image"
		src="./image/daegu/daegu_bislsangukribpark.png" width="430px"
			height="301px"
		onclick="location.href='introduceBislsanNationalPark.html'">
	<input type="image" src="./image/daegu/daegu_dongsungro.png" border="1"
		width="180px" height="100px"
		onclick="location.href='E_2_daegu_dongsungro.jsp'" class="btn_bt1"
		name="dongsungro">
	<input type="image" src="./image/daegu/daegu_palgongsanjayeonpark.png"
		border="1" width="180px" height="100px"
		onclick="location.href='E_3_daegu_palgongsanjayeonpark.jsp'"
		class="btn_bt2" name="palgongsanjayeonpark">

</body>
</html>
