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
<jsp:include page="header.jsp"></jsp:include>
<div id="menu1"><h1>코멘트 <br>
삭제 완료---></h1>
<br><br>

<br>
<video width="365" height="300" controls autoplay>
<source src="./video/Train - 2213.mp4" type="video/mp4"/></video>

<br><br><br>
<br><br><br>
<br><br><br>
<img src="./image/area/mountaineer-5616419_640.png" width=500;>

 
</div>


<%
	request.setCharacterEncoding("UTF-8"); 
	MapDAO tidao = new MapDAO(); 
	ArrayList<MapVO> tiArray = tidao.getAllInfo();
									
%>
<div id="content1">
<div id="table1" >
<table border=1 >
<tr>
		<th><h1>장소</h1></th><th><h1>코멘트</h1></th>
	</tr>
	<% for(MapVO imsi : tiArray){ %>
	<tr>
	
		<td><h2><%=imsi.getArea_Name() %></h2></td>
		<td><%=imsi.getUser_Comment()%></td>
	<%}%></tr>

	</table>
	</div><!--  travel8테이블 -->

	<h1>코멘트를 업데이트 하시려면 <a href = "area_Comment_Update1.jsp">여기</a>를 클릭해주세요!</h1>

			<br>
		
	</div><!-- content1-end -->
	
	
	
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