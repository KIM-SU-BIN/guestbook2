<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestBookDao"%>
<%@ page import="com.javaex.vo.GuestBookVo"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%
	List<GuestBookVo> guestList = (List<GuestBookVo>)request.getAttribute("gList");	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 글쓰기 테이블 -->
	<form action="./gbc" method="get">
		<input type="hidden" name="action" value="add">
		<table border="1" width="500">
			<tr>
				<td>이름</td><td>//값이 없으면 안 써도 됨! 
				<input type="text" name="name" value=""></td>
				<td>비밀번호</td><td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan="4">
				<textarea rows="10" cols="80" name="content" cols=60 rows=5> </textarea></td>
			</tr>
			<tr>
				<td colspan="4" align=right>
				<button type="submit">확인</button></td>
			</tr>
		</table>
	</form>
	<br>
	<br>


	<!-- 글 출력 -->
	<% for (GuestBookVo g : guestList) { %>
	<table width=510 border=1>
		<tr>
			<td width="50px"><%=g.getNo()%></td>
			<td width="150px"><%=g.getName()%></td>
			<td width="300px"><%=g.getDate()%></td>
			<td>
				<form action="./gbc?"method="get">
					<input type="hidden" name="action" value="deleteForm">
					<input type="hidden" name="del_no" value="<%=g.getNo()%>">
					<button type="submit">삭제</button>
				</form>
			</td>
		</tr>
		<tr>
			<td colspan="4" width="590px">
				<p>
					<%=g.getContent()%>
				</p>
			</td>
		</tr>
	</table>
	<br>
	<%}
	%>
</body>
</html>