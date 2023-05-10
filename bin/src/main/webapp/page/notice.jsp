<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="/common/header-common.jsp"%>
<body>
	<%@ include file="/common/nav.jsp"%>
	<div class="container">
		<!-- board-title area -->
		<div id="board-title">공지사항</div>

		<!-- board-menu area -->
		<div id="board-menu">
			<ul class="board-menu-list">
				<li><a href="notice.jsp" id="boardmenu-notice">공지사항</a></li>
				<li><a href="questionAndAnswer.jsp" id="boardmenu-qna">Q &
						A</a></li>
			</ul>
		</div>

		<!-- board-search area -->
		<div id="board-search">
			<div class="search-window">
				<form action="">
					<div class="search-wrap">
						<label for="search" class="blind">공지사항 내용 검색</label> <select
							id="submitoption">
							<option value="title">제목</option>
							<option value="writer">작성자</option>
							<option value="detail">내용</option>
						</select> <input id="search" type="search" name=""
							placeholder="검색어를 입력해주세요." value="">
						<button type="submit" class="btn btn-dark">검색</button>
					</div>
				</form>

			</div>
			<!--  board-total-count area -->
			<div id="board-total-count">
				<p>
					Total<span> n건</span>,<span> 1</span>/<span>5</span>(page)
				</p>
			</div>
		</div>

		<!-- board-list area -->
		<div id="board-list">

			<table class="board-table">
				<thead>
					<tr>
						<th scope="col" class="th-num">번호</th>
						<th scope="col" class="th-title">제목</th>
						<th scope="col" class="th-person">작성자</th>
						<th scope="col" class="th-date">작성일</th>
						<th scope="col" class="th-count">조회</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>-</td>
						<th><a href="#" class="board-name">[중요공지] 총 공지사항</a></th>
						<td>아무개</td>
						<td>2017.07.13</td>
						<td>126</td>
					</tr>
					<tr>
						<td>3</td>
						<th><a href="#" class="board-name">글 제목입니다.</a></th>
						<td>홍길동</td>
						<td>2017.06.15</td>
						<td>0</td>
					</tr>
					<tr>
						<td>2</td>
						<th><a href="#" class="board-name">글 제목입니다.</a></th>
						<td>홍길동</td>
						<td>2017.06.15</td>
						<td>1</td>
					</tr>
					<tr>
						<td>1(글 넘버)</td>
						<th><a href="#" class="board-name">글 제목입니다.</a></th>
						<td>홍길동</td>
						<td>2017.06.15</td>
						<td>13</td>
					</tr>
				</tbody>
			</table>

			<!--  -->
			<div class="board-page">
				<a href="#" class="bt first"><<</a> <a href="#" class="bt prev"><</a>
				<a href="#" class="num on">1</a> <a href="#" class="num">2</a> <a
					href="#" class="num">3</a> <a href="#" class="num">4</a> <a
					href="#" class="num">5</a> <a href="#" class="bt next">></a> <a
					href="#" class="bt last">>></a>
			</div>
		</div>
	</div>
	<%@ include file="/common/footer.jsp"%>
	<%@ include file="/common/footer-common.jsp"%>

</body>
</html>