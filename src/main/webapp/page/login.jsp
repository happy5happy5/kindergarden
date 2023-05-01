<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="/common/header-common.jsp"%>
<body>
	<%@ include file="/common/nav.jsp"%>

	로그인
	<!-- 기본적인 제출 폼입니다. -->
	<!-- 
		아직 확인하는 페이지가 안만들어져있으니 실제로 데이터가 잘 가는지는 
		직접 간단하게 만들어서 확인하셔야합니다 
		css적인 꾸미기가 많이 필요합니다 
	-->
	
		

	<form action="#">
		<label for="firstName" class="form-label">First name:</label><br>
		<input type="text" class="form-control" name="firstName" value="John"><br>
		<label for="lastName" class="form-label">Last name:</label><br> <input
			type="text" class="form-control" name="lastName" value="Doe"><br>
		<label for="email" class="form-label">Email:</label><br> <input
			type="email" class="form-control" name="email"
			value="example@example.com"><br> <label for="phone"
			class="form-label">Phone:</label><br> <input type="tel"
			class="form-control" name="phone" value="555-555-5555"><br>
		<label for="company" class="form-label">Company:</label><br> <input
			type="text" class="form-control" name="company" value="XYZ Co."><br>
		<label for="industry" class="form-label">Industry:</label><br> <select
			class="form-select" name="industry">
			<option value="" selected disabled hidden>-- Select one --</option>
			<option value="industry 1">Industry 1</option>
			<option value="industry 2">Industry 2</option>
			<option value="industry 3">Industry 3</option>
		</select><br> <label for="message" class="form-label">Message:</label><br>
		<textarea class="form-control" name="message"></textarea>
		<br> <input type="submit" class="btn btn-primary" value="Submit">
	</form>
	<%@ include file="/common/footer.jsp"%>
	<%@ include file="/common/footer-common.jsp"%>

</body>
</html>