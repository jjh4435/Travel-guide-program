<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="mapDAO.MapDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 삭제 완료화면</title>

</head>

<body>
<jsp:include page="header.html"></jsp:include>



<%
request.setCharacterEncoding("UTF-8");
MapDAO tidao = new MapDAO();

		String area_Name=request.getParameter("area_Name");
	


boolean b1 = tidao.delete_aName(area_Name);
if(b1)
	response.sendRedirect("area_Name_delete3.jsp");

 else{%>
<a href="area_Name_delete1.jsp">장소삭제 에러 다시 추가삭제화면으로</a>
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