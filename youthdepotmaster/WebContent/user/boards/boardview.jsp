<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- 페이지 요청됬을때 :  --%>
<script type="text/javascript">
	function move(url) {
		location.href = url;
	}
	function boardViewCheck() {
		var form = document.BoardViewForm;
		return true;
	}
</script>

<style>
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

body {
	font-family: 'Nanum Gothic', sans-serif;
}
</style>
<%@include file="../template/header.jsp"%>
<section id="content" class="gray-area">
	<div class="container">
		<div class="row">
			<div id="main" class="col-sm-8 col-md-9">
				<div class="booking-information travelo-box">
					<h2>게시판</h2>
					<hr />
					<form name="BoardViewForm" method="post">
						<table summary="전체 테이블 구성">
							<tr>
								<td><div align="center">
										<h3>
											<b>글 읽기</b>
										</h3>
									</div></td>
							</tr>
							<tr>
								<td colspan=2>
									<table border="1" summary="목록 테이블 구성">
										<tr>
											<td align=center bgcolor=#dddddd width=20%>작성자</td>
											<td bgcolor=#ffffe8 width=40%>지후니</td>
											<td align=center bgcolor=#dddddd width=50%>작성일</td>
											<td bgcolor=#ffffe8 width=40%>2015/11/23</td>
										</tr>
										<tr>
											<td align=center bgcolor=#dddddd>E-mail</td>
											<td bgcolor=#ffffe8>hunit@hunit</td>
											<td align=center bgcolor=#dddddd>홈페이지</td>
											<td bgcolor=#ffffe8><a href="http://hunit.tistory.com"
												target="_new">http://hunit.tistory.com</a></td>
										</tr>
										<tr>
											<td align=center bgcolor=#dddddd>제 목</td>
											<td bgcolor=#ffffe8 colspan=3>게시판 글입니다</td>
										</tr>
										<tr>
											<td colspan=4><br>가나다라마바사<br></td>
										</tr>
										<tr>
											<td colspan=4 align=right>조회수 :</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td align=center colspan=2>
									<hr size=1>
									<div align="center">
										[ <input type="button" value="목록"
											onclick="move('Board_List.jsp');"> | <input
											type="button" value="수정" onclick="move('Board_Update.jsp');">
										| <input type="button" value="답변"
											onclick="move('Board_Reply.jsp');"> | <input
											type="button" value="삭제" onclick="move('Board_Delete.jsp');">]<br>
									</div>
								</td>
							</tr>
						</table>
					</form>

				</div>
			</div>
			<div class="sidebar col-sm-4 col-md-3">
				<div class="travelo-box contact-box">
					<h4>Need Travelo Help?</h4>
					<p>We would be more than happy to help you. Our team advisor
						are 24/7 at your service to help you.</p>
					<address class="contact-details">
						<span class="contact-phone"><i class="soap-icon-phone"></i>
							1-800-123-HELLO</span> <br> <a class="contact-email" href="#">help@travelo.com</a>
					</address>
				</div>
				<div class="travelo-box book-with-us-box">
					<h4>Why Book with us?</h4>
					<ul>
						<li><i class="soap-icon-hotel-1 circle"></i>
							<h5 class="title">
								<a href="#">135,00+ Hotels</a>
							</h5>
							<p>Nunc cursus libero pur congue arut nimspnty.</p></li>
						<li><i class="soap-icon-savings circle"></i>
							<h5 class="title">
								<a href="#">Low Rates &amp; Savings</a>
							</h5>
							<p>Nunc cursus libero pur congue arut nimspnty.</p></li>
						<li><i class="soap-icon-support circle"></i>
							<h5 class="title">
								<a href="#">Excellent Support</a>
							</h5>
							<p>Nunc cursus libero pur congue arut nimspnty.</p></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="../template/footer.jsp"%>