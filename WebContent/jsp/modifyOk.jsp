<%@page import="co.micol.dto.MemberDto"%>
<%@page import="co.micol.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<%! int r; %>
	<%
	MemberDao dao = new MemberDao();
	MemberDto dto = new MemberDto();
		String id = request.getParameter("id");
		//String id = (String) session.getAttribute("id");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		
		dto.setId(id);
		dto.setName(name);
		dto.setAddr(addr);
		
		r = dao.personalUpdate(dto);
	 	
	 	if(r != 0){
	 		dto = dao.select(id);
	 	%>
	 		<h2><%=id%> 님의 정보가 수정되었습니다.</h2>
		 	<script type="text/javascript">
		 	alert(<%=id%>+"님의 정보가 수정되었습니다.")
		 		location.href="modify.jsp";
		 	</script>
	 	<%
	 	}else {
	 	%>
	 		<h2><%=id%> 님의 정보 수정이 실패했습니다. 다시 시도해주세요.</h2>
	 		<script type="text/javascript">
	 		alert(<%=id%>+"님의 정보 수정이 실패했습니다. 다시 시도해주십시오.")
	 		 	location.herf="modify.jsp";
	 		</script>	
	 	<%
	 	}
	 	%>
	 	<div>
	 	<button type="button" onclick="location.href='main.jsp'">메인으로</button> &nbsp;&nbsp;
	 	<button type="button" onclick="location.href='modify.jsp'">이전으로</button>
	 	</div>
	 	
	</div>
</body>
</html>