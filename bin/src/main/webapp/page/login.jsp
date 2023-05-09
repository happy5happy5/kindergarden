<%@page import="java.io.FileInputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="/common/header-common.jsp"%>
<body>
	<%@ include file="/common/nav.jsp"%>

	<!-- 기본적인 제출 폼입니다. -->
	<!-- 
		아직 확인하는 페이지가 안만들어져있으니 실제로 데이터가 잘 가는지는 
		직접 간단하게 만들어서 확인하셔야합니다 
		css적인 꾸미기가 많이 필요합니다 
	-->
<%-- 	루트경로 확인
	<%
    ServletContext context = getServletContext();
    String rootPath = context.getRealPath("/");
    out.println("Root path: " + rootPath); 
	%> 
--%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
			<%
			String error = request.getParameter("error");
			if (error != null) {
				out.println("<div class='alert alert-danger'>");
				out.println("아이디와 비밀번호를 확인해 주세요");
				out.println("</div>");
			}
			%>
			<form class="form-signin" action="login_process.jsp" method="post">
				<div class="form-group">
					<label for="inputID" class="sr-only">ID</label> <input
						type="text" class="form-control" placeholder="ID" name='userId'
						required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label> <input
						type="password" class="form-control" placeholder="Password"
						name='userPassword' required>
				</div>
				<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
			</form>
		</div>
	</div>

	<%@ include file="/common/footer.jsp"%>
	<%@ include file="/common/footer-common.jsp"%>

</body>
</html>