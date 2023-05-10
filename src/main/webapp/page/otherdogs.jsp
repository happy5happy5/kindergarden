<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="env.OtherdogsList" %>
<!DOCTYPE html>
<html lang="en">
    <link rel="stylesheet" href="../css/otherdogs.css">
<%@ include file="/common/header-common.jsp" %>
<body style="background-color: #f6ffe2;">
    <%@ include file="/common/nav.jsp" %>
	<header>
		<div class="heading">
			<h2 style="color: #eac25e;">다른 친구들의 오늘은 어땠을까요?</h2>
		</div>
	</header>
	<div id="gallery" >
		<%  
			OtherdogsList ol = new OtherdogsList();
		    String[] title = ol.getTitleList();
		    String[] img = ol.getImgList();
		    String[] content = ol.getContentList();
			for (int i=0; i<title.length; i++) {
		%>
		<div class="card" style="border: 3px solid #eac25e;">
			<header>
				<h3><%=title[i]%></h3>
			</header>
			<figure>
				<img src=<%=img[i]%>>
			</figure>
				<p style="font-size: 16px;"><%=content[i] %></p>
		</div>  
		<% } %>     
	</div>
	<%@ include file="/common/footer.jsp" %>
	<%@ include file="/common/footer-common.jsp" %>
</body>
</html>
