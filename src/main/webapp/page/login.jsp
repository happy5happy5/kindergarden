<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="/common/header-common.jsp"%>
<body>
	<%@ include file="/common/nav.jsp"%>
<div class="login-container container-fluid" style="background: linear-gradient(to bottom right, #FFDAB9 0%, #FFA07A 100%);">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card my-5">
                <div class="card-body">
                    <h1 class="text-center">로그인</h1>
                    <% if(request.getParameter("inValidError") != null){ %>
                    <div class="alert alert-danger mt-3" role="alert">
                        <strong>오류!</strong> <%= session.getAttribute("errorMessage")%>
                    </div>
                    <% } %>
                    <form class="form-signin" action="login_process.jsp" method="post">
                        <div class="form-group">
                            <label for="inputID">ID</label>
                            <input type="text" class="form-control" id="inputID" placeholder="아이디를 입력하세요." name="userId" required autofocus>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword">Password</label>
                            <input type="password" class="form-control" id="inputPassword" placeholder="비밀번호를 입력하세요." name="userPassword" required>
                        </div>
                        <button class="btn btn-success btn-block" type="submit">로그인</button>
                    </form>
                    <div class="form-group mt-3">
                        <small><a href="#">Forget?</a></small>
                        <small><a href="signup.jsp">SignUp?</a></small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

	<%@ include file="/common/footer.jsp"%>
	<%@ include file="/common/footer-common.jsp"%>

</body>
</html>