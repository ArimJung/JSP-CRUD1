<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="model.vo.MemberVO" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작성페이지</title>
</head>
<body>

<form action="controller.jsp" method="post">
	<input type="hidden" name="action" value="insert">
	<table border="1">
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" required></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><input type="text" name="content" required></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="writer" value="<%=member.getMid()%>" readonly required></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="submit" value="글 작성하기">
			</td>
		</tr>
	</table>
</form>
<hr>
<a href="controller.jsp?action=main">메인으로 돌아가기</a>

</body>
</html>