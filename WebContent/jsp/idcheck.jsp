<%@page import="co.micol.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%!boolean b;%>
</head>
<body>
	<div align="center">
	<%
		String id = request.getParameter("cid");
		MemberDao dao = new MemberDao();
		b = dao.isIdCheck(id);
		
		if (b) {  // true %>
		
			<h1><%=id %>는 사용 가능한 ID 입니다. </h1>
			<script type="text/javascript">
				window.opener.document.frm.idChk.value ="Checked";
				window.opener.document.frm.password.focus();
			</script> <%
		} else { // false %>
		
			<h1><%=id %>는  이미 사용중인 ID 입니다. </h1>
			<script type="text/javascript">
				window.opener.document.frm.idChk.vlaue ="";
				window.opener.document.frm.id.focus();
			</script>
			
		<% }
	%>
	<div>
		<br />
		<button type="button" onclick="window.close()">확인</button>
	</div>
	</div>
</body>
</html>