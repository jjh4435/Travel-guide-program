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
height:700px;
color:white;
background-color:SeaGreen;
}
#content1{
float:right;
width:80%;
height:700px;
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
<div id="head1">
<jsp:include page="header.jsp"></jsp:include></div>


<div id="menu1">

<% 
request.setCharacterEncoding("UTF-8");
MapDAO tidao = new MapDAO();


String area_Name = request.getParameter("area_Name");
String user_Comment = request.getParameter("user_Comment");


boolean b1 = tidao.update__aName(user_Comment, area_Name);

if(b1)
	response.sendRedirect("area_Name_delete3.jsp");

else{%>
<a href="area_Name_delete1.jsp">장소 삭제 화면으로 이동</a>
<%}%>
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