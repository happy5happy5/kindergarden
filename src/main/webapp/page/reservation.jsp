<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
		<link rel="stylesheet" href="../css/reservation.css">
<%@ include file="/common/header-common.jsp" %>
<style>
.process ul li::before{
    content: '';
    display: inline-block;
    width: 50px;
    height: 50px;
    background: url('../resources/arrow.png') no-repeat;
    background-size: cover;
    position: absolute;
    left: -95px;
    top: 17%;
    margin-right:100px;
}
.list1 .process_circle::before{
    background: url('../resources/read.png') no-repeat;
    background-size : cover;
}

.list2 .process_circle::before{
    background: url('../resources/write.png') no-repeat;
    background-size : cover;
}

.list3 .process_circle::before{
    background: url('../resources/check.png') no-repeat;
    background-size : cover;
}
</style>
<body style="background-color: white">
    <%@ include file="/common/nav.jsp" %>
	<div class="container">
 		<div class="heading">
            <p class="title">예약 절차</p>
        </div>
        <div class="process">
			<ul> <!-- 실험 -->
				<li class="list1">
					<div class="process_list">
						<p class="process_circle"></p>
		                <p class="process_title">1.커리큘럼 안내</p>
		                <p class="process_txt"> - 원하시는 커리큘럼을 선택해주세요</p>
		            </div>
		            <p class="process_arrow">
				</li>
              	<li class="list2">
					<div class="process_list">
						<p class="process_circle"></p>
		                <p class="process_title">2. 예약 페이지</p>
		                <p class="process_txt"> - 정보를 정확히 기재해주세요</p>
		            </div>
		            <p class="process_arrow">
				</li>
              	<li class="list3">
					<div class="process_list">
						<p class="process_circle"></p>
		                <p class="process_title">3.예약 완료</p>
		                <p class="process_txt"> - 내역은 마이페이지에서 확인해주세요</p>
					</div>
                </li>
            </ul>
		</div>
		<div class="go_curriculum">
			<div id="am" >
				<p class="content" style="text-align: left; padding: 25px; color: #555;"> ♪ 08:00 ~ 09:00 아이들이 등원을 하여 선생님과 친구들을 만나는 시간<br>
									♪ 09:00 ~ 10:00 유치원 주위에 있는 공원으로 산책을 가요~<br>
									♪ 10:00 ~ 11:00 아이들 입맛에 맞춰서 아침 식사<br>
									♪ 11:00 ~ 12:00 다양한 후각활동으로 이루어진 노즈워크 및 예절교육<br>
									♪ 12:00 ~ 13:00 간식 먹는 시간<br>
									♪ 13:00 ~ 14:00 에어 샤워와 미용을 하는 케어데이<br>
									♪ 14:00 ~ 15:00 하원</p>
				<input type="button" value="예약하기" style="margin-top: 150px;" onclick="window.location.href='reservation_detail.jsp'">
			</div>
			<div id="pm">
				<p class="content" style="text-align: left; padding: 25px; color: #555;"> ♪ 13:00 ~ 14:00 아이들이 등원을 하여 선생님과 친구들을 만나는 시간<br>
									♪ 14:00 ~ 15:00 간식 먹는 시간<br>
									♪ 15:00 ~ 16:00 다양한 장애물 달리기를 해보는 어질리티 및 보충교육<br>
									♪ 16:00 ~ 17:00 에어 샤워와 미용을 하는 케어데이<br>
									♪ 17:00 ~ 18:00 유치원 주위에 있는 공원으로 산책을 가요~<br>
									♪ 18:00 ~ 19:00 간단하지만 맛있는 저녁 식사<br>
									♪ 19:00 ~ 20:00 하원</p>
				<input type="button" value="예약하기" style="margin-top: 150px; " onclick="window.location.href='reservation_detail2.jsp'">
			</div>
			<div id="ampm">
				<p class="content" style="text-align: left; padding: 25px; color: #555;"> ♪ 08:00 ~ 09:00 아이들이 등원을 하여 선생님과 친구들을 만나는 시간<br>
									♪ 09:00 ~ 10:00 유치원 주위에 있는 공원으로 산책을 가요~<br>
									♪ 10:00 ~ 11:00 아이들 입맛에 맞춰서 아침 식사<br>
									♪ 11:00 ~ 12:00 다양한 후각활동으로 이루어진 노즈워크 및 예절교육<br>
									♪ 12:00 ~ 13:00 그룹워킹 또는 솔로워킹으로 이뤄진 도그워킹 및 야외활동<br>
									♪ 13:00 ~ 14:00 든든한 메뉴로 점심 식사<br>
									♪ 14:00 ~ 15:00 낮잠<br>
									♪ 15:00 ~ 16:00 다양한 장애물 달리기를 해보는 어질리티 및 보충교육<br>
									♪ 16:00 ~ 17:00 에어 샤워와 미용을 하는 케어데이<br>
									♪ 17:00 ~ 18:00 간단하지만 맛있는 저녁 식사<br>
									♪ 18:00 ~ 19:00 다같이 자유롭게 노는 자율시간<br>
									♪ 19:00 ~ 20:00 하원<br></p>
				<input type="button" value="예약하기" style="margin-top: 150px;" onclick="window.location.href='reservation_detail3.jsp'"> 
			</div>
		</div>
	</div>
    <a class="dropdown-item" href="/teamproject/page/reservation_detail.jsp">예약페이지-상세</a>

	<%@ include file="/common/footer.jsp" %>
	<%@ include file="/common/footer-common.jsp" %>

  </body>
</html>
