<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>




<meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>여행가이드 프로그램</title>
    <link rel="stylesheet" href="./incheon.css">
    
    
<title>Map Project</title>

<style>

body { 
min-height: 100vh; /* 최소 높이를 지정 */
display: flex; 
flex-direction: column;
}


footer { 
margin-top: auto;/* 최소 높이 하단에서 자동으로 뻗어나가도록 설정 */ 
}

main {
margin 0 auto;
max-width: 80ch;
}

</style>



</head>
<body class = "Site">

	<br>

	<div id="header" style="text-align: center">
		<h1><a href="seoul_login.html"><span class="blind">Home</span></a></h1>
	</div>
 
    <br><hr><br><br>
    
     	<div class="container" style="text-align: center">
               
		
		<% 
		String id = null;
		if (session.getAttribute("userId") != null){
			id = (String) session.getAttribute("userId");
			String name = (String)session.getAttribute("name");
			String nickname = (String)session.getAttribute("nickname");
			String email = (String)session.getAttribute("email");
			String sDate = (String)session.getAttribute("sDate");
			String gender = (String)session.getAttribute("gender");
		
		%>
		
		<h1><%=name %>님 환영합니다</h1> <br>
		<h2>id : <%=id %></h2><br>
		<h2>nickname : <%=nickname %></h2><br>
		<h2>email : <%=email %></h2><br>
		<h2>sDate : <%=sDate %></h2><br>
		<h2>gender : <%=gender %></h2><br>
		
		<%} %>

		<br><br><br>
		
		
		
	</div>

        
 	




<footer>
	<hr>
       <div style="text-align: center">
            (42811)서울특별시 중구 공평로 76(동인동 1가) | 전화: 021.654.327.3881~3886<br>
            Copyright(c) SEOUL METROPOLITAN CITY.All rights reserved.<br>
            TOUR드림 컴트루 컴퍼니 고객상담: 1588-1253
            <br>
            본 홈페이지에 게시된 이메일주소의 자동 수집을 거부하며 이를 위반시<br>
            정보통신망법에 의해 처벌됨을 유념하시기 바랍니다.<br>
       </div>
</footer>


</body>
</html>