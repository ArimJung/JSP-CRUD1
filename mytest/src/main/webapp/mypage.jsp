<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="data" class="model.vo.MemberVO" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>

<form action="controller.jsp?action=mupdate" method="post">
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="mid" value="<%=data.getMid()%>" readonly></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="mpw" value="<%=data.getMpw()%>" required></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="mname" value="<%=data.getMname()%>" required></td>
		</tr>
		<tr>
			<td>계정권한</td>
			<td><%=data.getRole()%></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="submit" value="회원정보변경">
			</td>
		</tr>
	</table>
</form>
<hr>
<a href="controller.jsp?action=main">메인으로 돌아가기</a> <br>
<a href="controller.jsp?action=mdelete">회원탈퇴</a>

</body>
</html>