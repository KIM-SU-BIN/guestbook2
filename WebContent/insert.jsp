<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>

<% //파라미타에서 값 꺼내오기
	String name = request.getParameter("name");
	String password = request.getParameter("password");
   	String blank = request.getParameter("blank");
   	String date = request.getParameter("reg_date");
   	
   //guestbookDao 객체 만들기
	//GuestBookVo guestbookVo = new GuestBookVo(name, password, blank, date);
	guestDao.guestInsert(new GuestBookVo(name, password, blank, date));
	//이해 안가는 부분!
	
	//phoneDao 객체 만들기
	GuestBookDao guestbookDao = new GuestBookDao();
	
	//phoneDao의 persinInsert()를 이용해서 저장하기
	response.sendRedirect("./addList.jsp");
%>