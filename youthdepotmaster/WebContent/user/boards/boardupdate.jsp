<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- 페이지 요청시 : 게시글에서 값 가져와서 출력 --%>
<%-- 답변등록 버튼누르면 : UserBoardUpdateController에 데이터 전달 --%>
<%@include file="../template/header.jsp"%>
<div class="page-title-container">
	<div class="container">
		<div class="page-title pull-left">
			<h2 class="entry-title">Thank You</h2>
		</div>
		<ul class="breadcrumbs pull-right">
			<li><a href="#">HOME</a></li>
			<li><a href="#">로그아웃</a></li>
			<li class="active">자유게시판</li>
		</ul>
	</div>
</div>
<section id="content" class="gray-area">
	<div class="container">
		<div class="row">
			<div id="main" class="col-sm-8 col-md-9">
				<div class="booking-information travelo-box">
					<h2>게시판</h2>
					<hr />



					<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>답변</title>
<style>
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

body {
	font-family: 'Nanum Gothic', sans-serif;
}
</style>

<script type="text/javascript">
	function move(url) {
		location.href = url;
	}
	function boardReplyCheck() {
		var form = document.BoardReplyForm;
		return true;
	}
</script>
</head>

<body>
	<table summary="전체 테이블 구성">
		<tr>
			<td bgcolor=#dcdcdc height=25 align=center>답변달기</td>
		</tr>
	</table>
	<br>

	<table summary="답변 테이블 구성">
		<form name="BoardReplyForm" method="post"
			action="Board_Reply_action.jsp" onsubmit="return boardReplyCheck();">
			<tr>
				<td>
					<table border=0 width=100% align=center>
						<tr>
							<td align="center">작성자</td>
							<td><input type=text name=name size=10 maxlength=8></td>
						</tr>
						<tr>
							<td align="center">E-Mail</td>
							<td><input type=text name=email size=30 maxlength=30></td>
						</tr>
						<tr>
							<td align="center">홈페이지</td>
							<td><input type=text name=homepage size=40 maxlength=30></td>
						</tr>
						<tr>
							<td width=10% align="center">제 목</td>
							<td width=50%><input type=text name=title size=50
								maxlength=30 value="RE : 게시판 글입니다."></td>
						</tr>
						<tr>
							<td width=10% align="center">내 용</td>
							<td><textarea name=content rows=10 cols=70> 가나다라마바사

----------------------------------------------

|댓글|

		</textarea></td>
						</tr>
						<tr>
							<td width=10% align="center">비밀 번호</td>
							<td width=70%><input type=password name="password" size=15
								maxlength=15></td>
						</tr>
						<tr>
							<td colspan=2><hr size=2></td>
						</tr>
						<tr>
							<td colspan="3" align="center"><input type="submit"
								value="답변 등록" class="btn">&nbsp; <input type="button"
								value="뒤로가기" onclick="javascript:history.back()"></td>
						</tr>
					</table>
				</td>
			</tr>
		</form>
	</table>
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

<footer id="footer">
	<div class="footer-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-3">
					<h2>Discover</h2>
					<ul class="discover triangle hover row">
						<li class="col-xs-6"><a href="#">Safety</a></li>
						<li class="col-xs-6"><a href="#">About</a></li>
						<li class="col-xs-6"><a href="#">Travelo Picks</a></li>
						<li class="col-xs-6"><a href="#">Latest Jobs</a></li>
						<li class="active col-xs-6"><a href="#">Mobile</a></li>
						<li class="col-xs-6"><a href="#">Press Releases</a></li>
						<li class="col-xs-6"><a href="#">Why Host</a></li>
						<li class="col-xs-6"><a href="#">Blog Posts</a></li>
						<li class="col-xs-6"><a href="#">Social Connect</a></li>
						<li class="col-xs-6"><a href="#">Help Topics</a></li>
						<li class="col-xs-6"><a href="#">Site Map</a></li>
						<li class="col-xs-6"><a href="#">Policies</a></li>
					</ul>
				</div>
				<div class="col-sm-6 col-md-3">
					<h2>Travel News</h2>
					<ul class="travel-news">
						<li>
							<div class="thumb">
								<a href="#"> <img src="http://placehold.it/63x63" alt=""
									width="63" height="63" />
								</a>
							</div>
							<div class="description">
								<h5 class="s-title">
									<a href="#">Amazing Places</a>
								</h5>
								<p>Purus ac congue arcu cursus ut vitae pulvinar massaidp.</p>
								<span class="date">25 Sep, 2013</span>
							</div>
						</li>
						<li>
							<div class="thumb">
								<a href="#"> <img src="http://placehold.it/63x63" alt=""
									width="63" height="63" />
								</a>
							</div>
							<div class="description">
								<h5 class="s-title">
									<a href="#">Travel Insurance</a>
								</h5>
								<p>Purus ac congue arcu cursus ut vitae pulvinar massaidp.</p>
								<span class="date">24 Sep, 2013</span>
							</div>
						</li>
					</ul>
				</div>
				<div class="col-sm-6 col-md-3">
					<h2>Mailing List</h2>
					<p>Sign up for our mailing list to get latest updates and
						offers.</p>
					<br />
					<div class="icon-check">
						<input type="text" class="input-text full-width"
							placeholder="your email" />
					</div>
					<br /> <span>We respect your privacy</span>
				</div>
				<div class="col-sm-6 col-md-3">
					<h2>About Travelo</h2>
					<p>Nunc cursus libero purus ac congue arcu cursus ut sed vitae
						pulvinar massaidp nequetiam lore elerisque.</p>
					<br />
					<address class="contact-details">
						<span class="contact-phone"><i class="soap-icon-phone"></i>
							1-800-123-HELLO</span> <br /> <a href="#" class="contact-email">help@travelo.com</a>
					</address>
					<ul class="social-icons clearfix">
						<li class="twitter"><a title="twitter" href="#"
							data-toggle="tooltip"><i class="soap-icon-twitter"></i></a></li>
						<li class="googleplus"><a title="googleplus" href="#"
							data-toggle="tooltip"><i class="soap-icon-googleplus"></i></a></li>
						<li class="facebook"><a title="facebook" href="#"
							data-toggle="tooltip"><i class="soap-icon-facebook"></i></a></li>
						<li class="linkedin"><a title="linkedin" href="#"
							data-toggle="tooltip"><i class="soap-icon-linkedin"></i></a></li>
						<li class="vimeo"><a title="vimeo" href="#"
							data-toggle="tooltip"><i class="soap-icon-vimeo"></i></a></li>
						<li class="dribble"><a title="dribble" href="#"
							data-toggle="tooltip"><i class="soap-icon-dribble"></i></a></li>
						<li class="flickr"><a title="flickr" href="#"
							data-toggle="tooltip"><i class="soap-icon-flickr"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="bottom gray-area">
		<div class="container">
			<div class="logo pull-left">
				<a href="index.html" title="Travelo - home"> <img
					src="images/logo.png" alt="Travelo HTML5 Template" />
				</a>
			</div>
			<div class="pull-right">
				<a id="back-to-top" href="#" class="animated"
					data-animation-type="bounce"><i
					class="soap-icon-longarrow-up circle"></i></a>
			</div>
			<div class="copyright pull-right">
				<p>&copy; 2014 Travelo</p>
			</div>
		</div>
	</div>
</footer>
<%@include file="../template/footer.jsp"%>

