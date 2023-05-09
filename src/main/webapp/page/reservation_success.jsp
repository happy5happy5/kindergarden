<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>  
<html lang="en">
<meta charset="UTF-8">
	<link rel="stylesheet" href="../css/reservation_success.css">
<%@ include file="/common/header-common.jsp" %>
<body>
    <%@ include file="/common/nav.jsp" %>
	<div class="header">
		<p>예약이 완료되었습니다</p>
	</div>
	<div class="content">
		<img class="my_img" src="../resource/reservation.png" >
		<p>마이페이지에서 예약 내역을 확인해보세요!</p>
		<input type="button" onclick="window.location.href='mypage.jsp'" value="마이페이지" style="margin-bottom:100px;">
	</div>
	<%@ include file="/common/footer.jsp" %>
	<%@ include file="/common/footer-common.jsp" %>
</body>
</html>
