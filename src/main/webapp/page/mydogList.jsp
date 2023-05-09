<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="diary.MydogList" %>
<!DOCTYPE html>
<html lang="en">
	<link rel="stylesheet" href="../css/mydogList.css">
<%@ include file="/common/header-common.jsp" %>
<body style="background-color: #f5e7e3;">
    <%@ include file="/common/nav.jsp" %>
	<header>
		<div class="heading">
			<h2>알림장 모아보기</h2>
		</div>
	</header>
	<div id="gallery">
		<%  
		    MydogList ml = new MydogList();
		    String[] title = ml.getTitleList();
		    String[] img = ml.getImgList();
		    String[] content = ml.getContentList();
			for (int i=0; i<title.length; i++) {
		%>
		<div class="card" style="border: 3px solid #f38d6f;">
			<header>
				<h3><%=title[i]%></h3>
			</header>
			<figure>
				<img src=<%=img[i]%>>
			</figure>
				<p><%=content[i] %></p>
		</div>  
		<% } %>     
	</div>
  	<%@ include file="/common/footer.jsp" %>
	<%@ include file="/common/footer-common.jsp" %>
</body>
</html>