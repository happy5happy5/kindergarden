<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="/common/header-common.jsp" %>
<style>

.image-container {
text-align: center;
margin-left: 150px;
}
img {
margin: 20px;
max-width: 60%;
height: auto;
}
.reservation {
max-width: 300px;
}
div {
text-align:center;
}

</style>
<body>

    <%@ include file="/common/nav.jsp" %>
    
<div>
<img src="..//resources/예약.png" alt="" class="reservation">
</div>

<div class="image-container">
<a href="reservation_detail3" target="_blank">
  <img src="..//resources/종일반.png" alt=""></a>
<a href="reservation_detail" target="_blank">  
  <img src="..//resources/오전반.png" alt=""></a>
<a href="reservation_detail2" target="_blank">  
  <img src="..//resources/오후반.png" alt=""></a>
</div>

	<%@ include file="/common/footer.jsp" %>
	<%@ include file="/common/footer-common.jsp" %>

  </body>
</html>