


<%@page import="Map_process.TelInfoVO"%>
<%@page import="Map_process.TelInfoDAO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./A_design.css">
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	
	<%
	String id = null;
	if (session.getAttribute("userId") != null){
		request.setCharacterEncoding("UTF-8");
		id = (String) session.getAttribute("userId");
		String name = (String)session.getAttribute("name");
		String nickname = (String)session.getAttribute("nickname");

		TelInfoDAO tidao = new TelInfoDAO();
		
		String id_check = (String)session.getAttribute("userId");
		
		ArrayList<TelInfoVO> tiArray = tidao.getAllInfo(id_check);
		%>
			<div style="text-align: center;">
			

			
			
				<h2><%=name %>(<%=nickname %>)님의 즐겨찾기 목록</h2>
			</div>
		<%
			
			for (TelInfoVO imsi : tiArray) {
		%>
			<div style="text-align:center;"  class="warp">
				<span class="name"><%=imsi.getLocal()%></span> 
				<img class="pic" src=<%=imsi.getPic()%> width="100" height="100">
				<a href=<%=imsi.getLink() %>>[지도 보기]</a>	
				<a href="A_Map_delete.jsp">[삭제]</a>
		
			</div>
		<%		} 
			}
		
		
		%>
<style>
div.warp{
display:inline-block;
margin-left:30px;
}
.warp a{
display:block;
}
.pic{
display:block;
margin: 0 auto
}
</style>
		



	<footer>
		<div class="center">
			<br> <br> (42811)서울특별시 중구 공평로 76(동인동 1가) | 전화:
			021.654.327.3881~3886<br> Copyright(c) SEOUL METROPOLITAN
			CITY.All rights reserved.<br> TOUR드림 컴트루 컴퍼니 고객상담: 1588-1253 <br>
			본 홈페이지에 게시된 이메일주소의 자동 수집을 거부하며 이를 위반시<br> 정보통신망법에 의해 처벌됨을 유념하시기
			바랍니다.<br>
		</div>
	</footer>

</body>
</html>