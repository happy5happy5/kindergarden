<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>


<%
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");

	try {

			boolean isDuplicateId=validator.isValidUser(userId);

		if (isDuplicateId) {
			response.sendRedirect("/teamproject/page/signup.jsp?duplicateId="+userId);
		} else {
			if(validator.signup(userId, password, phone, email)){
				session.setAttribute("id", userId);
				response.sendRedirect("/teamproject/index.jsp");
				}
			else{
				response.sendRedirect("/teamproject/index.jsp?databaseError=1");
			}
		}
	} catch (Exception e) {
		out.println("Exception: " + e.getMessage());
	}
%>


