<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/diary.css">
<title>고객 전용 알림장 intro</title>
</head>
<%@ include file="/common/header-common.jsp" %>
<body>
	<%@ include file="/common/nav.jsp" %>	
    <img src="../resources/bg.png" class="bg_img">
    <div class="container">
		<div class="mydog">
			<a href="mydog.jsp" class="link">
				<img src="../resources/mydog.png" class="mydog_img">
				<p class="title">우리 애만 볼래요</p>
			</a>
		</div>
        <div class="otherdogs">
        	<a href="otherdogs.jsp" class="link">
	        	<img src="../resources/otherdogs.png" class="otherdogs_img">
				<p class="title">다른 애도 볼래요</p>
			</a>
		</div>
	</div>
	<%@ include file="/common/footer.jsp" %>
	<%@ include file="/common/footer-common.jsp" %>
</body>
</html>
