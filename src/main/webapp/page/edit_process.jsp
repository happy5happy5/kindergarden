<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="java.io.*"%>
<%@ include file="dbconn.jsp"%>

<%
String email = request.getParameter("inputEmail");
String phone = request.getParameter("inputPhone");
String address = request.getParameter("inputAddress");
String password = request.getParameter("inputNewPassword");
String id = (String) session.getAttribute("id");
String curPassword = request.getParameter("inputCurPassword");
if (validator.isValidUser(id, curPassword)) {
	validator.updateUser(id, email, phone, address, password);
	response.sendRedirect("/teamproject/page/mypage.jsp");
} else {
	response.sendRedirect("/teamproject/page/mypage.jsp?invalidError=1");
}
%>
