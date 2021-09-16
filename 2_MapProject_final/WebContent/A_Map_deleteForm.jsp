



<%@page import="Map_process.TelInfoVO"%>
<%@page import="Map_process.TelInfoDAO"%>
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
		 request.setCharacterEncoding("UTF-8");
	 	response.setCharacterEncoding("UTF-8");
	 
		TelInfoDAO tidao = new TelInfoDAO();
		String oriLocal=request.getParameter("local");
		
		TelInfoVO tv2 = tidao.search_local(oriLocal);
	%>
	
		<form action = "A_Map_deleteProcess.jsp" method="post">
			<div style="text-align:center;"  class="warp">
				<span class="local"><%=tv2.getLocal()%></span> 
				<img class="pic" src=<%=tv2.getPic()%> width="100" height="100">
				<input type="hidden" name="local" value="<%=tv2.getLocal()%>">
			<input type="submit" value="삭제">	
				
				
				
				<a href=<%=tv2.getLink() %>>[지도 보기]</a>	
				<a href="A_Map_insert_delete.jsp">[모두보기]</a>
					
			</div>
			</form>
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