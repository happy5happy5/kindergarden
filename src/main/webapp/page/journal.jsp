<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="/common/header-common.jsp" %>
<body>
    <%@ include file="/common/nav.jsp" %>
    
    알림장
    <!-- dk -->
    <!-- 이미지의 상대경로로는 ../resource/snow.jpg 
    			절대경로는 /teamproject/src/main/webapp/resource/snow.jpg
    -->
    
    
    <!-- 캐로셀은 혼자서 하기보다 유투브에있는 1시간도 안되는 시간에 캐로셀 만들기 강의가 많이 있으니 
    	한번 따라해보고 하는걸 추천합니다.
    	혼자 이해하려면 더 오래걸릴꺼에요.
    -->
    
    <!-- id : carouselExampleControls 은 마음대로 바꾸어도 됩니다
    	다만 연결되어있는 아래쪽에 
    	data-bs-target: 의 값에 똑같이 넣어주기만 하면 됩니다
    	아래 코드는 공식 홈페이지에 있는 예제입니다
     -->

<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="../resource/snow.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../resource/spring.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../resource/summer.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  
  
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  
  
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


	<%@ include file="/common/footer.jsp" %>
	<%@ include file="/common/footer-common.jsp" %>

  </body>
</html>