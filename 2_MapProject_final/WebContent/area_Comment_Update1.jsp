<%@page import="mapVO.MapVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mapDAO.MapDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

#head1{
width:100%;
height:150px;

}
#menu1{
float:left;
width:20%;
height:1200px;
color:white;
background-color:SeaGreen;
}
#content1{
float:right;
width:80%;
height:1200px;
background-color:Wheat;
}


#foot1
{

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

#table1 {
background-color:Peru;
color:white;
}

</style>
</head>
<body>



<%
	request.setCharacterEncoding("UTF-8"); //postt
	MapDAO tidao = new MapDAO(); //객체 생성
	ArrayList<MapVO> tiArray = tidao.getAllInfo();
									//객체.메소드
%>

<div id="head1">
<jsp:include page="header.jsp"></jsp:include></div>


<div id="menu1">
<h1>코멘트 수정할 장소 선택</h1>

<h3>수정하려는 장소를 클릭하세요</h3>
<br>
<video width="365" height="300" controls autoplay>
<source src="./video/Sunset - 32750.mp4" type="video/mp4"/></video>


<img src="./image/area/mountaineer-5616419_640.png" width=500;>
</div>

<div id="content1">

<img src="./image/seoul/seoul_chungyechen.png" width=300>
<img src="./image/seoul/seoul_NamsanPark.png" width=300>
<img src="./image/suwon/suwon_changyongmun.png" width=300>
<img src="./image/busan/busan_haeundae.png" width=300>


<div id="table1">
 
<table border=1 >
<tr>
		<th><h1>장소</h2></th><th><h1>코멘트</h2></th>
	</tr>
	
	<% for(MapVO imsi : tiArray){ %>
	<tr>

		<td><h1><a href="area_Comment_Update2.jsp?area_Name=<%=imsi.getArea_Name() %>"> <%=imsi.getArea_Name() %></a></h1></td>
		<td><h1><%=imsi.getUser_Comment() %></h1></td>
		
	<%} %>
	</tr>
	
	<tr>
</table></div>


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