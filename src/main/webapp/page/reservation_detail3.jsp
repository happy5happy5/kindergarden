<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="../css/reservation_detail.css">
<script type="text/javascript" src="../js/reservation_check.js"></script>
<%@ include file="/common/header-common.jsp" %>
</head>
<body>
	 <%@ include file="/common/nav.jsp" %>
	<div class="container">
	    <form action="" name="form_detail" method="post">
	    	<p class="heading" style="font-size: 38px;">예약상세</p><br>
	    	
		    <label for="name" class="form-label">보호자 성명 :</label><br>
		    <input type="text" class="form-control" name="name" required><br>
		    
	  		<label for="phone" class="form-label">연락처 : <span style="font-size: 14px; color: #555;">(ex. 000-1111-2222)</span></label><br>
	  		<input type="tel" class="form-control" name="phone" required><br>
	           
		    <label for="email" class="form-label">이메일 주소 : <span style="font-size: 14px; color: #555;">(ex. example99@example.com)</span></label><br>
		    <input type="email" class="form-control" name="email" required><br>
	                                    
			<label for="date" class="form-label">예약 날짜 :</label><br>
		    <input type="date" class="form-control" name="date" required><br>
		    
		    <label for="curriculum" class="form-label">커리큘럼 :</label><br>
		    <select class="form-select" name="curriculum" style="width: 600px;" required>
		    	<option value="" selected disabled hidden>-- Select one --</option>
		    	<option value="curriculum">오전반</option>
		        <option value="curriculum">오후반</option>
		        <option value="curriculum" selected>종일반</option>
		    </select><br>
		    
		    <label for="message" class="form-label">남기실 말씀 :</label><br>
		    <textarea class="form-control" name="message" style="width: 600px; height: 70px;"></textarea><br>
		    <input type="submit" class="btn btn-primary" value="제출하기" onclick="checkForm()">
		</form>
	</div>
	<%@ include file="/common/footer.jsp" %>
	<%@ include file="/common/footer-common.jsp" %>
</body>
</html>