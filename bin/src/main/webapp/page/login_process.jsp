<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>

<%
request.setCharacterEncoding("UTF-8");
String userId = request.getParameter("userId");
String userPassword = request.getParameter("userPassword");

boolean isValid = validator.isValidUser(userId, userPassword);

if (isValid) {
	session.setAttribute("id", userId);
	response.sendRedirect("../index.jsp");
} else {
	session.setAttribute("errorMessage", "비번 잘못침요");
	System.out.print(request.getAttribute("errorMessage"));
	response.sendRedirect("login.jsp?inValidError=1");
}

validator.disconn();
%>