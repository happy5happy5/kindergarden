<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>


<%
p

request.setCharacterEncoding("UTF-8");
String userId = request.getParameter("userId");
String userPassword = request.getParameter("userPassword");

PreparedStatement pstmt = null;
ResultSet rs = null;

String sql = "select * from users where userid= ? and password= ?";
pstmt = conn.prepareStatement(sql);

pstmt.setString(1, userId);
pstmt.setString(2, userPassword);

rs = pstmt.executeQuery();

boolean temp = rs.next();

if (rs != null)
	rs.close();
if (pstmt != null)
	pstmt.close();
if (conn != null)
	conn.close();

if (temp) {
	String id = request.getParameter("userId");
	String password = request.getParameter("userPassword");
	session.setAttribute("id", id);
	response.sendRedirect("../index.jsp");
} else {
	response.sendRedirect("login.jsp?error=1");
}
%>


