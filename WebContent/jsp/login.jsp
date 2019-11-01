<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/menu.css"> 
</head>
<body>
	<div align="center">
		<!--<c:if test="${!empty id }">
			<div><jsp:include page="topMenu.jsp" /></div>
		</c:if> -->
		<div>
			<h1>로 그 인</h1>
		</div>
		<div>
			<form id="frm" name="frm" action="loginOk.jsp" method="post">
				<table align="center">
					<tr align="center">
						<th>아이디</th><td><input type="text" id="id" name="id"></td> 
					</tr>
					<tr align="center">
						<th>패스워드</th><td><input type="password" id="pw" name="password"></td> 
					</tr>
				</table><br />
				<button type="submit" id="btn" name="btn">로그인</button> &nbsp;&nbsp;
				<button type="reset" id="reset" name="reset">취소</button> &nbsp;&nbsp;
				<button type="button" onclick="location.href='join.jsp'" id="join" name="join">회원가입</button>
			</form>
		</div>
		<div><jsp:include page="footer.jsp" /></div>
	</div>
</body>
</html>