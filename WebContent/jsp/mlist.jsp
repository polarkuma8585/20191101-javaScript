<%@page import="co.micol.dao.MemberDao"%>
<%@page import="co.micol.dto.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/menu.css"> 

</head>
<body>
	<div align="center">
	<div><h2>전체 회원 목록</h2></div>
	<%
		//response.setCharacterEncoding("UTF-8");
		ArrayList<MemberDto> list = new ArrayList<>();
		MemberDao dao = new MemberDao();
		list = dao.selectAll();
		out.print("<table align=center>");
		out.print("<tr align=center><th>아이디</th><th>이름</th><th>권한</th><th>가입일</th><th>주소</th></tr>");
		for(MemberDto dto : list){
			out.print("<tr align=center><td width=200>"+ dto.getId()+ "</td>");
			out.print("<td width=200>"+  dto.getName()+ "</td>");
			out.print("<td>"+ dto.getGrant() + "</td>");
			out.print("<td width=300>" + dto.getEnterDate()+ "</td>");
			out.print("<td width=400>"+ dto.getAddr()+ "</td></tr>");
		}
		out.print("</table>");
	%>
	<div>
	<br />
	<button type="butto" onclick="location.href='main.jsp'">메인으로 가기</button></div>
	<div><jsp:include page="footer.jsp"></jsp:include></div>
	</div>
	
</body>
</html>