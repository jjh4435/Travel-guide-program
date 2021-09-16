<%@page import="mapVO.MapVO"%>
<%@page import="mapDAO.MapDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코멘트 삭제</title>

<style>

#head1{
width:100%;
height:150px;

}
#menu1{
float:left;
width:20%;
height:1500px;
color:white;
background-color:SeaGreen;

}
#content1{
float:right;
width:80%;
height:1500px;
background-color:Wheat;
}

#foot1
{
float:left;
width:100%;
height:150px;
background-color:BlanchedAlmond;

}
#input1 {

background-color:Peru;
color:white;
border:3px solid white;
border-radius:5px;
}
</style>

</head>

<body>

<%
	request.setCharacterEncoding("UTF-8");
	MapDAO tidao = new MapDAO();
	String oriName = request.getParameter("area_Name");
	MapVO tv2 = tidao.search_aName(oriName);	
%>

<div id="head1">
<jsp:include page="header.jsp"></jsp:include></div>


<div id="menu1">

<h1>코멘트편집</h1>
<img src="./image/area/checkbox-155884_640.png" width=100>
<h3>코멘트 삭제할 여행지를 체크박스에 체크후 <br>
<br>
여행목록에서 삭제를 누르세요.</h3>
<br>
<br>
<video width="365" height="300" controls autoplay>
<source src="./video/Ocean - 19609.mp4" type="video/mp4"/></video>

<br><br><br><br><br>
<br><br><br><br><br>

<img src="./image/area/mountaineer-5616419_640.png" width=500;>
</div>

<div id="content1">
<form action="area_Name_delete2.jsp" method="post">
<table border="0" cellspacing="50px">

<div id="input1">

<input type="submit" value="코멘트 삭제" style = "width: 200pt; height: 30pt;" >

<input type="reset" value="다시 선택" style = "width: 200pt; height: 30pt;" ></div>

<tr>
<td>
<img src="./image/daegu/daegu_bislsangukribpark.png" width=300>
<h2><input type=checkbox name="area_Name" value="대구비슬산군립공원" >대구비슬산군립공원<br><h2>
</td>
<td>
<img src="./image/incheon/incheon_freepark.png" width=300>
<h2><input type=checkbox name="area_Name" value="인천자유공원">인천자유공원<br></h2>
</td>
<td>
<img src="./image/kangwon/kangwon_kangmunhaebyen.png" width=300>
<h2><input type=checkbox name="area_Name" value="강릉경포대">강릉경포대<br></h2>
</td>
<td>
<img src="./image/seoul/seoul_NamsanPark.png" width=300>
<h2><input type=checkbox name="area_Name" value="서울남산공원">서울남산공원<br></h2>
</td>
</tr>

<tr>
<td>
<img src="./image/daegu/daegu_palgongsanjayeonpark.png" width=300>
<h2><input type=checkbox name="area_Name" value="대구팔공산">대구팔공산<br></h2>
</td>
<td>
<img src="./image/suwon/suwon_changyongmun.png" width=300>
<h2><input type=checkbox name="area_Name" value="수원팔달문">수원팔달문<br></h2>
</td>
<td>
<img src="./image/kangwon/kangwon_kyengpobutggotchukje.png" width=300>
<h2><input type=checkbox name="area_Name" value="강릉경포벚꽃축제">강릉경포벚꽃축제<br></h2>
</td>
<td>
<img src="./image/daegu/daegu_dongsungro.png" width=300>
<h2><input type=checkbox name="area_Name" value="대구동승로">대구동승로<br></h2>
</td>
</tr>

<tr>
<td>
<img src="./image/incheon/incheon_centrollpark.png" width=300>
<h2><input type=checkbox name="area_Name" value="인천센트럴파크">인천센트럴파크<br></h2>
</td>
<td>
<img src="./image/busan/busan_haeundae.png" width=300>
<h2><input type=checkbox name="area_Name" value="부산해운대">부산해운대<br></h2>
</td>
<td>
<img src="./image/seoul/seoul_DobongSan.png" width=300>
<h2><input type=checkbox name="area_Name" value="서울도봉산">서울도봉산<br></h2>
</td>
<td>
<img src="./image/busan/busan_siminPark.png" width=300>
<h2><input type=checkbox name="area_Name" value="부산시민공원">부산시민공원<br></h2>
</td>
</tr>

<tr>
<td>
<img src="./image/busan/busan_jenpocafekeori.png" width=300>
<h2><input type=checkbox name="area_Name" value="부산카페거리">부산카페거리<br></h2>
</td>
<td>
<img src="./image/seoul/seoul_chungyechen.png" width=300>
<h2><input type=checkbox name="area_Name" value="서울청계천">서울청계천<br></h2>
</td>
<td>
<img src="./image/incheon/incheon_park.png" width=300>
<h2><input type=checkbox name="area_Name" value="인천대공원">인천대공원<br></h2>
</td>
</tr>
</table>

 </div>
 
<footer>
	<hr>
       <div id="footer1" style="text-align: center">
            <address>(42811)서울특별시 중구 공평로 76(동인동 1가) | 전화: 021.654.327.3881~3886<br>
            Copyright(c) SEOUL METROPOLITAN CITY.All rights reserved.<br>
            TOUR드림 컴트루 컴퍼니 고객상담: 1588-1253</address>
            <br>
            본 홈페이지에 게시된 이메일주소의 자동 수집을 거부하며 이를 위반시<br>
            정보통신망법에 의해 처벌됨을 유념하시기 바랍니다.<br>
            
       </div>
</footer>
</body>
</html>