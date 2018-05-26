<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
div.box {
	width: 70%;
	background: white;
	margin: 0 auto;
}

div.paybox>h1, p {
	padding-left: 100px;
}

div.paybox>input {
	padding-left: 100px;
}

div input {
	text-align: left;
}

div.icon {
	height: 40px;
	line-height: 40px;
	text-align: center;
	background: yellow;
	margin: 0 auto;
}

div.icondiv {
	height: 25px;
	line-height: 25px;
	border-radius: 20px;
	width: 100px;
	text-align: center;
	background: black;
	color: white;
	margin: 0 auto;
}

div.text {
	width: 70%;
	margin: 10px auto;
}

div.textleft {
	width: 90%;
	margin: 1px auto;
	text-align: left;
}

div.textright {
	width: 90%;
	margin: 1px auto;
	text-align: right;
}

div.left {
	padding-left: 20px;
	width: 90%;
	margin: 1px auto;
	text-align: left;
	display: inline-block;
}

div.leftwight {
	padding-left: 5px;
	width: 90%;
	margin: 5px auto;
	text-align: left;
}

div.right {
	width: 90%;
	margin: 1px auto;
	text-align: right;
	display: inline;
}
</style>
<%@include file="../template/header.jsp"%>
<section id="content" class="gray-area">
	<div class="container">
		<div class="row">
			<div class="box">
				<div class="icon">리워드</div>
				<br>
				<div>
					<h2 style="padding-left: 10px">선택항목</h2>
					<span>선택항목 상세내용</span>
					<div class="textright">
						수량 : 0 개 <span> 00000열정</span>
					</div>
					<hr>
					<div class="left">추가 후원금</div>
					<div class="right">0원</div>
					<hr>
					<div class="left">펀딩금액</div>
					<div class="right">0원</div>
					<hr>
					<div class="left">추가 후원금</div>
					<div class="right">0원</div>
					<br>
					<br>
					<div class="left">배송비</div>
					<div class="right">0원</div>
					<br>
					<br>
					<div class="left">차감금액</div>
					<div class="right">0원</div>
					<br>
					<br>
					<div class="left">최종결제열정</div>
					<div class="right">0원</div>
					<br>
					<br>
					<div class=" col-md-4" style="background: white;">
						<h2>청춘창고 리워드 배송안내</h2>
						<div class="text">내용</div>
						<div class="text">내용</div>
						<div class="text">내용</div>
						<div class="text">내용</div>
						<div class="text">내용</div>
						<div class="text">내용</div>
						<div class="text">내용</div>
						<div class="text">내용</div>
					</div>
					<div class=" col-md-4" style="background: white;">
						<div class="icondiv">리워드 선택</div>
						<div class="leftwight">
							<h2>이름</h2>
						</div>
						<input type="text" value="이름">
						<div class="leftwight">
							<h2>이메일</h2>
						</div>
						<div class="leftwight">아이디@도메인</div>
						<div class="leftwight">
							<h2>휴대폰번호</h2>
						</div>
						<div class="leftwight">000-0000-0000</div>
						<hr>
					</div>
					<div class=" col-md-4" style="background: white;">
						<div class="icondiv">리워드 선택</div>
						<label><input type="radio"> 기존배송지</label> <input
							type="text" value="기존배송지"><br> <label><input
							type="radio"> 새로입력</label> <input type="text" value="새로입력">
						<hr>
						<div class="leftwight">
							<h2>배송시 요청사항 (선택)</h2>
						</div>
						<input type="text" value="경비실에 보관해주세요">
						<hr>
						<div class="leftwight">해당 요청사항은 배송에 관련된 내용만 적어주세요!</div>

					</div>
					<div style="margin: 0 auto; width: 200px; height: 100px;">
						<button style="width: 200px; height: 50px; border-radius: 20px;">결제
							예약하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="../template/footer.jsp"%>

