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
<div class="container-fluid" style="background: linear-gradient(to bottom right, #FFDAB9 0%, #FFA07A 100%);">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card my-5">
                <div class="card-body">
                    <h1 class="text-center">회원가입</h1>
                    <form class="form-signin" action="signup_process.jsp" method="post">
                    <!-- 
                    	필요한 작업
                    	1. userid email phone address password 인풋 태그 다 만들기
                    	2. 유효성 검사하기
                    	3. 
                    	
                    
                     -->
                    
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
                        <small><a href="#">Sign up</a></small>
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