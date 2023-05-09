<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="../css/reservation_detail.css">
<%@ include file="/common/header-common.jsp" %>
</head>
<body>
	<%@ include file="/common/nav.jsp" %>
	
	<%
		request.setCharacterEncoding("UTF-8");
	
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String date = request.getParameter("date");
		String curriculum = request.getParameter("curriculum");
		String message = request.getParameter("message");
		
		response.sendRedirect("reservation_success.jsp");
	%>
	
	<%@ include file="/common/footer.jsp" %>
	<%@ include file="/common/footer-common.jsp" %>
</body>
</html>