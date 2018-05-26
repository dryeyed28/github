<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--페이지 요청됬을때 : UserBoardListController >> 받은데이터 출력 --%>
<%--검색기능 : ajax요청 >> UserBoardSerchController >> boardserchrslt.jsp에서 데이터받아옴  --%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
<title>게시판 목록</title>
<style type="text/css">
* {
	font-size: 9pt;
}

p {
	width: 600px;
	text-align: right;
}

table thead tr th {
	background-color: blue;
}
</style>
<script type="text/javascript">
	function goUrl(url) {
		location.href = url;
	}
</script>
<%@include file="../template/header.jsp"%>
<section id="content" class="gray-area">
	<div class="container">
		<div class="row">
			<div id="main" class="col-sm-8 col-md-9">
				<div class="booking-information travelo-box">
					<h2>게시판</h2>
					<hr />
					<hr />
					<body>
						<form name="searchForm" action="" method="get">
							<p>
								<select name="searchType">
									<option value="ALL">전체검색</option>
									<option value="SUBJECT">제목</option>
									<option value="WRITER">작성자</option>
									<option value="CONTENTS">내용</option>
								</select> <input type="text" name="searchText" value="" /> <input
									type="submit" value="검색" />
							</p>
						</form>
						<table border="1" summary="게시판 목록">
							<caption>자유게시판</caption>
							<colgroup>
								<col width="50" />
								<col width="300" />
								<col width="80" />
								<col width="100" />
								<col width="70" />
							</colgroup>
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>등록 일시</th>
									<th>조회수</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td align="center" colspan="5">등록된 게시물이 없습니다.</td>
								</tr>
								<tr>
									<td align="center">1</td>
									<td><a href="boardView.jsp">첫번째 게시글 입니다.</a></td>
									<td align="center">김연석</td>
									<td align="center">2013.06.24</td>
									<td align="center">10</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td align="center" colspan="5">1</td>
								</tr>
							</tfoot>
						</table>
						<p>
							<input type="button" value="목록" onclick="goUrl('boardList.jsp');" />
							<input type="button" value="글쓰기"
								onclick="goUrl('boardWriteForm.jsp');" />
						</p>
					</body>
					</html>
					</dl>
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