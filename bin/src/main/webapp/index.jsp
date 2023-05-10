<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/common/header-common.jsp"%>
<body>
	<%@ include file="/common/nav.jsp"%>

	<!-- todo: 
	error 메세지 start 
	request.parameter invalidError=1 이면 error 메세지 
	-->

	<%
	if ("1".equals(request.getParameter("invalidError"))) {
	%>
	<!-- 1초뒤에 사라짐 -->
	<div id="error-message">비번 틀림요</div>
	<%
	}
	%>
	<!-- error 메세지 end -->
	<!-- mypageModal start -->
	
	<div class="modal fade" id="mypageValidationModal" tabindex="-1"
		aria-labelledby="mypageValidationModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="mypageValidationModal">Modal
						title</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">추가 인증이 필요합니다</div>
				<form action="page/mypage.jsp" method="post">
					<div class="row g-3 align-items-center">

						<!-- todo: 여기에 autofocus가 안먹힘 -->
						<div class="col-auto ms-5 my-3">
							<input type="password" id="inputPassword" class="form-control"
								aria-describedby="passwordHelpInline" name="inputPassword"
								autofocus>
						</div>
						<div class="col-auto">
							<span id="passwordHelpInline" class="form-text"> 비번 입력하세요.</span>
						</div>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">취소</button>
						<input type="submit" class="btn btn-primary" value="입력">
					</div>
				</form>
			</div>
		</div>
	</div>
	
	
	
	
	<!-- mypageModal end -->
	<main>
		<section>이벤트?</section>
		<section>아니면 회사소개?</section>
		<section>첫페이지?</section>
	</main>


	<%@ include file="/common/footer.jsp"%>
	<%@ include file="/common/footer-common.jsp"%>

</body>
</html>
