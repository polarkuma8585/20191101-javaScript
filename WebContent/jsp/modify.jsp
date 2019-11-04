<%@page import="co.micol.dto.MemberDto"%>
<%@page import="co.micol.dao.MemberDao"%>
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
	<%
		String id = (String) session.getAttribute("id");
		
		MemberDto dto = new MemberDto();
		MemberDao dao = new MemberDao();
		dto = dao.select(id);
	%>
	
	<div align="center">
		<div>
			<h2>회원 개인 정보</h2>
		</div>
		<form id="frm" name="frm" action="modifyOk.jsp" method="post">
			<div>
				<table width="300">
					<tr align="center">
						<th width="50">아이디</th>
						<td width="80">
						<input type="text" id="id" name="id" value=<%=dto.getId()%> readonly>
						</td>
					</tr>
					<tr align="center">
						<th>이름</th>
						<td >
						<input type="text" id="name" name="name" value=<%=dto.getName()%>>
						</td>
					</tr>
					<tr align="center">
						<th>가입일</th>
						<td >
						<%=dto.getEnterDate()%>
						</td>
					</tr>
					<tr align="center">
						<th>주소</th>
						<td>
						<input type="text" id="addr" name="addr" value=<%=dto.getAddr()%>>
						</td>
					</tr>
				</table>
			</div>
			<div>
				<br />
				<input type="submit" value="수정" /> &nbsp;&nbsp;
				<button type="button" onclick="location.href='main.jsp'">돌아가기</button>
			</div>
		</form>
		<div><jsp:include page="footer.jsp"></jsp:include></div>
	</div>
</body>
</html>