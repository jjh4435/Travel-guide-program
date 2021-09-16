
<%@page import="Map_process.TelInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% //SawonUpdateProcess.jsp
request.setCharacterEncoding("UTF-8");
TelInfoDAO tidao = new TelInfoDAO();

//int id= Integer.parseInt(request.gettParamether("id"));
String local = request.getParameter("local");



boolean b1 = tidao.delete_local(local);
if(b1)
	response.sendRedirect("A_Map_insert_delete.jsp");

else{%>
<a href="A_Map_delete.jsp">사원삭제 에러 - 삭제화면으로</a>
<%}%>

</body>
</html>