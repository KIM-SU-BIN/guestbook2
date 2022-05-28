<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
//파라미터에서 password값 꺼내오기
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	
	
	//객체 만들기
   	GuestBookVo personVo = new GuestBookVo(name, password);
   	System.out.println(personVo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<h1>GuestBook</h1>

</body>
</html>