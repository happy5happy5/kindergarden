<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*" %>
<%@ include file="dbconn.jsp"%>

<%
   	String id = (String) session.getAttribute("id");
    try {
 		validator.deleteUser(id);
        session.invalidate();
        response.sendRedirect("/teamproject/index.jsp?withdrawalSuccess=1");
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("/teamproject/index.jsp?withdrawalSuccess=0");
    }
%>