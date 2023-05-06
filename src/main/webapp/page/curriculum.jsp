<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="/common/header-common.jsp" %>
<style>
table,td {
    margin: 0 auto;
    border:1px solid black;
    border-collapse:collapse;
    border-color:skyblue;
    border-spacing:5px;
    text-align: center;
}
h1 {
    text-align: center;
}
.class {
width:500;
height:100;
bordercolor:skyblue;
}
</style>
<body>
    <%@ include file="/common/nav.jsp" %>
<br><h1>하루종일</h1>
<table class="curriculum" id="all">
<tr bgcolor=#76D7EA>
<th width="20%">시간</th> 
<th width="50%">수업 내용</th> 
</tr> 
<tr align="center"> 
<td>08:00 ~ 09:00</td>
<td>등원/출석체크</td>
</tr> 
<tr align="center"> 
<td>09:00 ~ 10:00</td>
<td>산책</td>
</tr>   
<tr align="center"> 
<td>10:00 ~ 11:00</td>
<td>아침 식사</td>
</tr> 
<tr align="center"> 
<td>11:00 ~ 12:00</td>
<td>노즈워크 및 예절교육</td>
</tr> 
<tr align="center"> 
<td>12:00 ~ 13:00</td>
<td>도그워크 및 야외활동</td>
</tr> 
<tr align="center"> 
<td>13:00 ~ 14:00</td>
<td>점심 식사</td>
</tr> 
<tr align="center"> 
<td>14:00 ~ 15:00</td>
<td>낮잠</td>
</tr> 
<tr align="center"> 
<td>15:00 ~ 16:00</td>
<td>어질리티 및 보충교육</td>
</tr> 
<tr align="center"> 
<td>16:00 ~ 17:00</td>
<td>케어데이</td>
</tr> 
<tr align="center"> 
<td>17:00 ~ 18:00</td>
<td>저녁 식사</td>
</tr> 
<tr align="center"> 
<td>18:00 ~ 19:00</td>
<td>자율시간</td>
</tr> 
<tr align="center"> 
<td>19:00 ~ 20:00</td>
<td>하원</td>
</tr>
</table><br>

<!-- 오전반 -->
<h1>오전반</h1>
<table class="curriculum" id="am">
<tr bgcolor=#BAE3E6>
<th width="20%">시간</th> 
<th width="50%">수업 내용</th>  
</tr> 
<tr align="center"> 
<td>08:00 ~ 09:00</td>
<td>등원/출석체크</td>
</tr> 
<tr align="center"> 
<td>09:00 ~ 10:00</td>
<td>산책</td>
</tr> 
<tr align="center"> 
<td>10:00 ~ 11:00</td>
<td>아침 식사</td>
</tr> 
<tr align="center"> 
<td>11:00 ~ 12:00</td>
<td>노즈워크 및 예절교육</td>
</tr> 
<tr align="center"> 
<td>12:00 ~ 13:00</td>
<td>간식시간</td>
</tr> 
<tr align="center"> 
<td>13:00 ~ 14:00</td>
<td>케어데이</td>
</tr> 
<tr align="center"> 
<td>14:00 ~ 15:00</td>
<td>하원</td>
</tr> 
</table><br>

<!-- 오후반 -->
<h1>오후반</h1>
<table class="curriculum" id="all">
<tr bgcolor=#8EC1E9> 
<th width="20%">시간</th> 
<th width="50%">수업 내용</th> 
</tr> 
<tr align="center"> 
<td>13:00 ~ 14:00</td>
<td>등원/출석체크</td>
</tr> 
<tr align="center"> 
<td>14:00 ~ 15:00</td>
<td>간식시간</td>
</tr> 
<tr align="center"> 
<td>15:00 ~ 16:00</td>
<td>어질리티 및 보충교육</td>
</tr> 
<tr align="center"> 
<td>16:00 ~ 17:00</td>
<td>케어데이</td>
</tr> 
<tr align="center"> 
<td>17:00 ~ 18:00</td>
<td>산책</td>
</tr> 
<tr align="center"> 
<td>18:00 ~ 19:00</td>
<td>저녁 식사</td>
</tr> 
<tr align="center"> 
<td>19:00 ~ 20:00</td>
<td>하원</td>
</tr>
</table><br>

	<%@ include file="/common/footer.jsp" %>
	<%@ include file="/common/footer-common.jsp" %>

  </body>
</html>