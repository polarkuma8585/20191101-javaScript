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
	<br />
	<c:if test="${id != null }">
		<h2>${id } 님 환영합니다.</h2> <h3>[${grant }] 등급</h3>
		<c:if test="${grant == 'U' }">
		 일반 유저입니다. 
		 </c:if>
		 <c:if test="${grant == 'S' }">
		 <h3>관리자 입니다.</h3> 
		 	<br />
		 	<button type="button" onclick="location.href='mlist.jsp'">회원목록 보기</button>
		 	<br />
		 </c:if>
		 <br />
		
		<button type="button" onclick="location.href='modify.jsp'">회원정보수정</button> &nbsp;&nbsp;
		<button type="button" onclick="location.href='logOut.jsp'">로그아웃</button>				 
	</c:if>	 
	<c:if test="${id == null }">
		<h2>로그인 사용자만 사용할 수 있습니다.</h2>
		<button type="button" onclick="location.href='login.jsp'">로그인</button>
	</c:if>
	<div><jsp:include page="footer.jsp"></jsp:include></div>
	</div>
</body>
</html>