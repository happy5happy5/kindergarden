<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="fadein" class="position-fixed w-100 h-100 bg-white"
	style="animation: fadeinall 1s normal 0.3s both"></div>
<header class="sticky-top">
	<nav class="navbar navbar-expand-lg bg-light ">
		<div class="container-fluid">
			<a class="navbar-brand alien" href="<c:url value="/index.jsp"/>">유치원</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="<c:url value="/page/introduce.jsp"/>">회사소개</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/page/curriculum.jsp"/>">커리큘럼</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/page/reservation.jsp"/>">예약하기</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/page/journal.jsp"/>">알림장</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> 고객센터 </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="<c:url value="/page/notice.jsp"/>">공지사항</a></li>
							<li><a class="dropdown-item" href="<c:url value="/page/queryAndAnswer.jsp"/>">q&a</a></li>
						</ul></li>
				</ul>
				<div class="spacer mx-auto"></div>
				<!-- Todo :: 여기서 세션 저장해놓은거 확인해야함 -->
				<a class="nav-item mr-auto border" type="button"  href="<c:url value="/page/login.jsp"/>">로그인</a>
				
				<a class="nav-item mr-auto border" type="button"  href="<c:url value="/page/signin.jsp"/>">회원가입</a>
			</div>
		</div>
	</nav>
</header>
