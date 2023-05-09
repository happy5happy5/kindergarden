<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/common/header-common.jsp"%>
<head>
<style type="text/css">
/*board-main-box*/
.board-main-box .board-info-box ul li {
font-size:1.2rem;
}

.board-main-box {
	margin: 2em 0;
	width: 100%;
	border-top: 2px solid #000;
}

.board-main-box .board-title-box {
	padding: 20px 15px;
	border-bottom: 1px dashed #ddd;
	font-size: 1.7rem;
}

.board-main-box .board-info-box {
	padding: 0;
	border-bottom: 1px solid #999;
	font-size: 0;
}

.board-main-box .board-contents-box {
	padding: 15px;
	border-bottom: 1px solid #000;
	line-height: 160%;
	font-size: 1.2rem;
}

.board-main-box ul {
	
}

.board-main-box ul li {
	display: inline-block;
	height: 20px;
	margin: 0 auto;
	padding: 5px 0;
}

.board-main-box ul li span {
	margin-right: 2em;
}

/*board-pager-box*/
.board-pager-box {
	padding: 15px;
	border-bottom: 1px solid #000;
	line-height: 160%;
	font-size: 1.4rem;
}

.board-pager-box div {
	
}

/*board-btn : list, revise btn*/
.board-btn {
	margin: 30px;
	text-align: center;
	font-size: 0;
	margin-bottom: 10em;
}

.bt_wrap a {
	display: inline-block;
	min-width: 80px;
	margin-left: 10px;
	padding: 10px;
	border: 1px solid #000;
	border-radius: 10%;
	font-size: 1.4rem;
}

.bt_wrap a.list {
	background: #555;
	color: #fff;
	float: right;
	text-decoration: none;
}

.bt_wrap a.revise {
	background: #555;
	color: #fff;
	float: right;
	text-decoration: none;
}

.bt_wrap a:hover {
	background: #373737;
	border-color: #373737;
	color: #fff;
}
</style>
</head>
<body>

	<%@ include file="/common/nav.jsp"%>
	<div class="container">
		<%@ include file="board-top-qna.jsp"%>

		<!-- board-content area -->
		<div class="board-content">

			<%@ include file="boardView.jsp"%>

			<div class="board-btn">
				<div class="bt_wrap">
					<ul>
						<li><a class="list" href="questionAndAnswer.jsp">목록</a></li>

						<li><a class="revise" href="d.jsp">수정</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="/common/footer.jsp"%>
	<%@ include file="/common/footer-common.jsp"%>

</body>
</html>