<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="user.UserValidator"%>
<%@ page import="java.sql.*"%> 
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.util.Properties" %>
<%@ page import="env.ReadPropertiesFile" %>
<%
UserValidator validator=null;
try {
    ReadPropertiesFile rpf = new ReadPropertiesFile();

    String url = rpf.getMysqlUrl();
    String user = rpf.getUser();
    String password =  rpf.getPassword();

    Class.forName("com.mysql.cj.jdbc.Driver");
    /* Loading class `com.mysql.jdbc.Driver'. This is deprecated. The new driver class is `com.mysql.cj.jdbc.Driver'. The driver is automatically registered via the SPI and manual loading of the driver class is generally unnecessary.*/
    Connection conn = DriverManager.getConnection(url, user, password);
    validator = new UserValidator(conn);

} catch (SQLException e) {
    System.err.println("dbconn.jsp SQLException: " + e.getMessage());
} 

		
%>