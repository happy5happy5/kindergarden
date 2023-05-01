<%@ page language="java" contentType="text/html charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 기본적인 제출 폼입니다. 사용하지는 않으나 실험용으로 지우지 않고 마지막까지 놔둘 예정입니다 -->
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
</body>
</html>