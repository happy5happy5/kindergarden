<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="/common/header-common.jsp"%>
<link
	href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600&display=swap"
	rel="stylesheet">

<style>
body {
	font-family: 'Quicksand', sans-serif;
	background-color: #f8f9fa;
}

.list-group-item {
	border-radius: 0;
	border: none;
	border-bottom: 1px solid #dee2e6;
}

.list-group-item:hover {
	background-color: #f8f9fa;
}

.list-group-item.active {
	background-color: #17a2b8 !important;
	border-color: #17a2b8 !important;
}

.list-group-item.active:hover {
	background-color: #343a40;
	border-color: #343a40;
}

.card {
	border-radius: 0;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
}

.card:hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

.card-header {
	background-color: #17a2b8;
	color: #fff;
	border-radius: 0;
	border-bottom: 1px solid #dee2e6;
}
</style>
<body>
	<%@ include file="/common/nav.jsp"%>
	<!-- 
		1. 먼저 비번 확인부터 해야한다
		2. 페이지 이동해서 나타날 메뉴를 정해야한다
		3. 자신의 알림장을 보는 기능이 필요하다
		4. 자신의 일정을 보는 기능이 필요하다
		5. 회원탈퇴 기능이 필요하다 
	 -->
	<%
	String id = (String) session.getAttribute("id");
	String pw = request.getParameter("inputPassword");
	boolean isValidUser = validator.isValidUser(id, pw);

	if (isValidUser || session.getAttribute("validMypage") != null) {
		session.setAttribute("validMypage", 1);
	} else {
		response.sendRedirect("/teamproject/index.jsp?invalidError=1");
	}
	/* out.print("통과요~"); */
	%>
	<!-- 비번 잘 넣었을때 mypage -->


	<!-- 
		1. container 안에 div 2개 
		2. 두부분 나뉘어지고 왼쪽편은 선택하는 버튼
		3. 오른쪽은 그에따른 화면 다이나믹하게
	 -->

	<div class="container-fluid">
		<div class="row mt-4">
			<div class="col-md-3">
				<div class="list-group">
					<a href="#" class="list-group-item list-group-item-action active"
						onclick="showContent('schedule',event);"> <i
						class="fas fa-calendar-alt mr-2"></i>나의일정
					</a> <a href="#" class="list-group-item list-group-item-action"
						onclick="showContent('notification',event);"> <i
						class="fas fa-bell mr-2"></i>나의알림장
					</a> <a href="#" class="list-group-item list-group-item-action"
						onclick="showContent('edit',event);"> <i
						class="fas fa-user-edit mr-2"></i>정보수정
					</a> <a href="#" class="list-group-item list-group-item-action"
						onclick="showContent('withdraw',event);"> <i
						class="fas fa-user-times mr-2"></i>회원탈퇴
					</a> <a href="#" class="list-group-item list-group-item-action"
						onclick="showContent('consultation',event);"> <i
						class="fas fa-comments mr-2"></i>나의상담
					</a>
				</div>
			</div>
			<div class="col-md-9">
				<div id="schedule" class="content" style="display: block;">
					<div class="card">
						<div class="card-header">
							<h5 class="mb-0">
								<i class="fas fa-calendar-alt mr-2"></i>나의일정
							</h5>
						</div>
						<div class="card-body">
							<p>나의일정 내용</p>
						</div>
					</div>
				</div>
				<div id="notification" class="content" style="display: none;">
					<div class="card">
						<div class="card-header">
							<h5 class="mb-0">
								<i class="fas fa-bell mr-2"></i>나의알림장
							</h5>
						</div>
						<div class="card-body">
							<p>나의알림장 내용</p>
						</div>
					</div>
				</div>


				<div id="edit" class="content" style="display: none;">
					<div class="card">
						<div class="card-header">
							<h5 class="mb-0">
								<i class="fas fa-user-edit mr-2"></i>정보수정
							</h5>
						</div>
						<div class="card-body">
							<form method="post" action="/teamproject/page/edit_process.jsp">
								<div class="form-group">
									<label for="inputEmail">이메일 주소</label> <input type="email"
										class="form-control" id="inputEmail" name="inputEmail"
										aria-describedby="emailHelp"
										value="<%=validator.getUserInfo(id, "email")%>" required>
								</div>
								<div class="form-group">
									<label for="inputPhone">전화번호</label> <input type="text"
										class="form-control" id="inputPhone" name="inputPhone"
										value="<%=validator.getUserInfo(id, "phone")%>" required>
								</div>
								<div class="form-group">
									<label for="inputAddress">주소</label> <input type="text"
										class="form-control" id="inputAddress" name="inputAddress"
										value="<%=validator.getUserInfo(id, "address")%>" required>
								</div>
								<div class="form-group">
									<label for="inputPassword">현재 비밀번호</label> <input
										type="password" class="form-control" id="inputCurPassword"
										name="inputCurPassword" required>
								</div>
								<div class="form-group">
									<label for="inputNewPassword">새로운 비밀번호</label> <input
										type="password" class="form-control" id="inputNewPassword"
										name="inputNewPassword" required>
								</div>
								<button type="submit" class="btn btn-primary">정보 수정</button>
							</form>
						</div>
					</div>
				</div>



				<div id="withdraw" class="content" style="display: none;">
					<div class="card">
						<div class="card-header">
							<h5 class="mb-0">
								<i class="fas fa-user-times mr-2"></i>회원탈퇴
							</h5>
						</div>
						<div class="card-body">
							<form method="post"
								action="/teamproject/page/withdrawal_process.jsp">
								<p>정말로 탈퇴하시겠습니까?</p>
								<button type="submit" class="btn btn-danger">탈퇴하기</button>
							</form>
						</div>
					</div>
				</div>
				<div id="consultation" class="content" style="display: none;">
					<div class="card">
						<div class="card-header">
							<h5 class="mb-0">
								<i class="fas fa-comments mr-2"></i>나의상담
							</h5>
						</div>
						<div class="card-body">
							<p>나의상담 내용</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


















	<!-- 
    	introduce.jsp와 비슷하게 만들면 됩니다.
     -->
	<script type="text/javascript">
		function showContent(id, e) {
			let contents = document.getElementsByClassName("content");
			for (let i = 0; i < contents.length; i++) {
				contents[i].style.display = "none";
			}
			document.getElementById(id).style.display = "block";
			let previousActive = document
					.querySelector(".list-group-item.active");
			if (previousActive) {
				previousActive.classList.remove("active");
			}
			e.target.classList.add("active");
		}
	</script>

	<%@ include file="/common/footer.jsp"%>
	<%@ include file="/common/footer-common.jsp"%>

</body>
</html>