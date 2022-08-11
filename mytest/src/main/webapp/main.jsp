<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.vo.BoardVO,java.util.ArrayList" %>
<jsp:useBean id="datas" class="java.util.ArrayList" scope="request" />
<jsp:useBean id="member" class="model.vo.MemberVO" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
<script type="text/javascript">
	function check(){
		ans=prompt('비밀번호를 입력하세요.');
		if(ans=='<%=member.getMpw()%>'){
			location.href="controller.jsp?action=mypage";
		}
	}
</script>

<%
	if(member.getMid()!=null){ 
%>
<h1><a href="javascript:check()"><%=member.getMname()%></a>님, 반갑습니다! :D</h1>
<a href="controller.jsp?action=logout">로그아웃</a> <br><br>
<% 
	}
	else{
%>
	<a href="login.jsp"><button>로그인</button></a> &nbsp;
	<a href="reg.jsp"><button>회원가입</button></a><br><br>
<%	
	}
%>

<!-- 검색 -->
<form action="controller.jsp" method="post">
	<input type="hidden" name="action" value="main">
	<table border="3">
		<tr>
			<td>
				<select name="searchCondition">
					<option selected value="TITLE">제목</option>
					<option value="WRITER">작성자</option>
				</select>
				&nbsp;
				<input type="text" name="searchContent" >&nbsp;&nbsp;&nbsp;<input type="submit" value="검색">
			</td>
		</tr>
	</table>
</form>
<br>

<!-- 글 목록 -->
<table border="2">
	<tr>
		<th>번 호</th><th>제 목</th><th>작성자</th>
	</tr>
<%
	for(BoardVO v:(ArrayList<BoardVO>)datas){
%>
	<tr>
		<th><a href="controller.jsp?action=board&bid=<%=v.getBid()%>"><%=v.getBid()%></a></th>
		<td><%=v.getTitle()%></td>
		<td><%=v.getWriter()%></td>
	</tr>
<%
	}
%>
</table>
<hr>
<%
	if(member.getMid()!=null){ 
%>
<a href="form.jsp">새로운 글 작성하기</a>
<%
	}
	else{
%>	
	새로운 글을 작성하시려면 로그인해주세요 :D
<%
	}
%>

</body>
</html>