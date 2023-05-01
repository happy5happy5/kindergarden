<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="/common/header-common.jsp" %>
<body>
    <%@ include file="/common/nav.jsp" %>

	<!-- css가 많이 필요한 페이지입니다 -->
	<!-- 
		상세 페이지로 가도록 연결만 해두었습니다.
		이미 만들어져있는 
		introduce.jsp와 많이 유사하게 구성되어있습니다
		참고해서 작업하면 좋겠습니다.
		힌트: 스크롤을 제어(introduce.jsp)하는 대신에 페이지의 내용을 바꿔주면 됩니다.
	 -->
    <a class="dropdown-item" href="/teamproject/page/reservation_detail.jsp">예약페이지-상세</a>

	<%@ include file="/common/footer.jsp" %>
	<%@ include file="/common/footer-common.jsp" %>

  </body>
</html>