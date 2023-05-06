<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="/common/header-common.jsp" %>
<style>
.image-container {
text-align: center;
margin-top: -10px;
margin-left: 150px;
}

img {
margin: 40px;
max-width: 58%;
height: auto;
}

.container {
  position: relative;
}

.image1 {
  position: absolute;
  top: -2090px;
  left: 515px;
  width: 100px;
  height: auto;
}

.image2 {
  position: absolute;
  top: -1310px;
  left: 515px;
  width: 100px;
  height: auto;
}

.image3 {
  position: absolute;
  top: -620px;
  left: 515px;
  width: 100px;
  height: auto;
}

</style>
<body>
    <%@ include file="/common/nav.jsp" %>
<div class="image-container">
  <img src="../resources/2.png" alt="">
  <img src="../resources/3.png" alt="">
  <img src="../resources/11.png" alt="">
</div>
<div class="container">
  <img src="../resources/뼈다귀.png" alt="" class="image1">
  <img src="../resources/하트.png" alt="" class="image2">
  <img src="../resources/수퍼볼.png" alt="" class="image3">
</div>
	<%@ include file="/common/footer.jsp" %>
	<%@ include file="/common/footer-common.jsp" %>

  </body>
</html>