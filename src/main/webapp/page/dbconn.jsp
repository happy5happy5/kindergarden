<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%> 
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.util.Properties" %>
<%@ page import="env.ReadPropertiesFile" %>
<%
	Connection conn = null;	

	try {
		ReadPropertiesFile rpf = new ReadPropertiesFile();
		
		String url = rpf.getMysqlUrl();
		String user = rpf.getUser();
		String password =  rpf.getPassword();

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);
		
	} catch (SQLException ex) {
		out.println("데이터베이스 연결이 실패되었습니다.<br>");
		out.println("SQLException: " + ex.getMessage());
	}
		
%>