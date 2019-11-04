<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/menu.css">
<script>
	function formCheck(){
		
		if(frm.id.value == ""){
			alert("아이디를 입력하세요.")
			frm.id.focus();
			return false;
		}
		if(frm.idChk.value == "unCheck"){
			alert("아이디 중복체크를 해주세요.")
			frm.id.focus();
			return false;
		}
		if(frm.pw.value == ""){
			alert("패스워드를 입력하세요.")
			frm.pw.focus();
			return false;
		}
		if(frm.name.value == ""){
			alert("이름를 입력하세요.")
			frm.name.focus();
			return false;
		}
		
		frm.submit();	
	}
	function idCheck(){
		window.open("idcheck.jsp?cid="+ id.value, "IdCheck","width=800, height=400");
	}
</script>
</head>
<body>
	<div align="center">
		<div>
			<h2>회원가입</h2>
		</div>
		<div>
			<form id="frm" name="frm" action="joinOk.jsp" method="post">
				<table>
					<tr align="center">
						<th width="100">*아이디</th>
						<td><input type="text" id="id" name="id"></td>
						<td><button type="button" name="idChk" onclick="idCheck()" value="unCheck">중복체크</button></td>
						
					</tr>
					<tr align="center">
						<th>*패스워드</th>
						<td><input type="password" id="pw" name="pw"></td>
					</tr>
					<tr align="center">
						<th>*이름</th>
						<td><input type="text" id="name" name="name"></td>
					</tr>
					<tr align="center">
						<th>주소</th>
						<td><input type="text" id="addr" name="addr"></td>
					</tr>
				</table>
			
		</div>
		<br />
		<div>
			
			<button type="button" onclick="formCheck()" id="subbtn" name="subbtn">회원가입</button>
			&nbsp;&nbsp;
			<button type="reset" id="rstbtn" name="rstbtn">취소</button>
			&nbsp;&nbsp;
			<button type="button" onclick="location.href='login.jsp'" id="login_btn" name="login_btn">로그인</button>
		</div>
		</form>
		<div><jsp:include page="footer.jsp"></jsp:include></div>
	</div>
</body>
</html>