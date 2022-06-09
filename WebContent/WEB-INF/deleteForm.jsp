<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
int delNo = Integer.parseInt(request.getParameter("del_no"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--method="get" get으로 쓰고 마지막에 post로받기 + type="text"도 나중에 hidden으로 변경 --%>
	<form action="./gbc" method="get">
		<input type="text" name="action" value="delete"> 
		<input type="text" name="del_no" value="<%=delNo%>"> 비밀번호 
		<input type="password" name="del_pw">
		<button type="submit">확인</button>
	</form>
	<br>
	<a href="./gbc?action=addList">메인으로 돌아가기</a>
</body>
</html>