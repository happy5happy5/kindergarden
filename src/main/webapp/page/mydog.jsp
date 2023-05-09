<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="diary.MydogList" %>
<!DOCTYPE html>
<html lang="en">
	<link rel="stylesheet" href="../css/mydog.css">
<%@ include file="/common/header-common.jsp" %>
<body style="background-color: #f5e7e3;">
    <%@ include file="/common/nav.jsp" %>
    <div class="container">
	    <div id="pictures" style="background-color: #f5e7e3;">
	    	<div id="small-pic"  style="background-color: white; margin-top: 40px;">
	    		<ul style="padding: 3px; padding-left: 0; padding-bottom: 0">
		    		<%  
		    			MydogList ml = new MydogList();
		    			String[] img = ml.getImgList();
				    	for (int i=0; i<img.length; i++) {
				    %>
	    			<li><img src=<%=img[i]%>  class="small" style="padding: 10px;"></li><% } %>
	    		</ul>
	        </div>
		</div>
		<div class="wrap" >
		    <div class="header">
		        <button onclick="window.location.href='mydogList.jsp'" class="toList" style="background-color: white;">목록</button>
		    </div>
		    <div class="diaryBox" id="diaryBox">
		        <div class="diaryTop">
		            <div class="dateShow">
		                 <p>
		                     <%
		                     	Calendar cal = Calendar.getInstance();
		                     %>
		                     <%=cal.get(Calendar.YEAR)%>년
		                     <%=cal.get(Calendar.MONTH) + 1%>월
		                     <%=cal.get(Calendar.DATE)%>일
		                 </p>
		            </div>
		            <div class="weatherShow">
		              날씨: 🌞
		            </div>
		        </div>
		        <div class="titleShow">
		            <p id="mainTitle">제목: 생일 파티를 했어요!
		        </div>
		        <div class="diaryImage">
		            <img src="../resource/dog0.jpg" id="today-pic" style="transition: all ease-in 0.2s;">
		        </div>
		        <div class="textBox">
		            <p id="innerTxt">오늘 생일을 맞은 코코!<br>동생 껌딱지 모모와 함께 같이 사진 찍었어요! 맛있는 간식도 먹고 즐거웠답니다~
		        </div>
		    </div> 
		</div>
	</div>
	<%@ include file="/common/footer.jsp" %>
	<%@ include file="/common/footer-common.jsp" %>
	
	<script>
	var todayPic = document.querySelector("#today-pic");
	var smallPics = document.querySelectorAll(".small");

	for (var i=0; i<smallPics.length; i++){
		smallPics[i].addEventListener("click", changePic);
	}
	
	function changePic() {
		var newPic = this.src;
		todayPic.setAttribute("src", newPic);
	}
	
	</script>
  </body>
</html>