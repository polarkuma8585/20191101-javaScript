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
<%! int n; %>
<%
		request.setCharacterEncoding("UTF-8");
		MemberDao dao = new MemberDao();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		
		MemberDto dto = new MemberDto(id, name, pw, addr);
		//dto.setId(id);
		//dto.setPw(pw);
		//dto.setName(name);
		//dto.setAddr(addr);
		
		n = dao.insert(dto);
	%>
</head>
<body>
	<% 
		if(n != 0){
			out.print("회원가입이 성공했습니다.");
		}else {
			out.print("회원가입이 실패했습니다.");
		}
	%>
	
</body>
</html>