<%@page import="mapVO.MapVO"%>
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
<h1>코멘트 수정</h1>
<%
	request.setCharacterEncoding("UTF-8");
	MapDAO tidao = new MapDAO();
	String oriName = request.getParameter("area_Name");
	MapVO tv2 = tidao.search_aName(oriName);	
%>
<div id="head1">
<jsp:include page="header.jsp"></jsp:include></div>


<div id="menu1">
<h1>코멘트 update</h1>
<br>
<video width="365" height="300" controls autoplay>
<source src="./video/Marshland - 17610.mp4" type="video/mp4"/></video>


<img src="./image/area/mountaineer-5616419_640.png" width=500;>

</div>
<div id="content1">
<form action="area_Comment_Update3.jsp" method="post">
<table border=1 >
<tr>
		<th><h1>장소</h2></th><th><h1>코멘트</h2></th>
	</tr>


	<td><h1><%=tv2.getArea_Name() %></h1></td>
	
	<td><input type="text" name="user_Comment" size="50" value="<%=tv2.getUser_Comment() %>" style="height:50px;font-size:12pt;"></td>
	
	<h1><input type="hidden" name="area_Name" value="<%=tv2.getArea_Name() %>"></h1>
	
</tr>
<tr><td colspan=6><h1><input type="submit"  value="클릭하시면 코멘트 수정이 완료 됩니다." style = "width: 300pt; height: 50pt;font-size:12pt; color:#ff0000; font-weight:bold;"></h1></td>
</tr>
</table>

</div>
</form>
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