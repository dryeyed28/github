<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
div.paybox {
	width: 70%;
	background: white;
	margin: 0 auto;
	border-radius: 20px;
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
</style>
<%@include file="../template/header.jsp"%>
<section id="content" class="gray-area">
	<div class="container">
		<div class="row">
			<div class="icondiv">리워드 선택</div>
			<br>
			<div class="text">펀딩해주시는 금액에 따라 감사의 의미로 리워드를 제공해드립니다</div>
			<div class="paybox">
				<h1>1000원 펀딩합니다.</h1>
				<input type="checkbox" name='pqy1'>
				<p>
					펀딩 내용 <br>여러가지내용 <br>이것저것내용
				</p>
			</div>
			<br>
			<div class="paybox">
				<h1>1000원 펀딩합니다.</h1>
				<input type="checkbox" name='pqy1'>
				<p>
					펀딩 내용 <br>여러가지내용 <br>이것저것내용
				</p>
			</div>
			<br>
			<div class="paybox">
				<h1>1000원 펀딩합니다.</h1>
				<input type="checkbox" name='pqy1'>
				<p>
					펀딩 내용 <br>여러가지내용 <br>이것저것내용
				</p>
			</div>
			<br>
			<div class="paybox">
				<h1>1000원 펀딩합니다.</h1>
				<input type="checkbox" name='pqy1'>
				<p>
					펀딩 내용 <br>여러가지내용 <br>이것저것내용
				</p>
			</div>
			<br>
			<div class="icondiv">리워드 선택</div>
			<div class="text">후원금을 더하여 후원할수 있습니다 추가로 후원하시겠습니까?</div>
			<div class="text">
				<input type="number">원을 추가로 후원합니다.
			</div>
			<div class="icondiv">공개여부 선택</div>
			<div class="text">참여자 목록에 참여자 이름과 펀딩금액이 공개됩니다. 혹시, 조용히 후원하고
				싶으시다면, 비공개로 선택해주세요.</div>
			<div style="padding-left: 40%">
				<label class="paylb"><input type="checkbox"> 이름 비공개
				</label> <label class="paylb"><input type="checkbox"> 금액 비공개
				</label>
			</div>
			<hr>
			<div class="text">집에서도,밖에서도 자유로운 당신만의 라이프웨어에 0 원을 펀딩합니다.</div>
			<div style="margin: 0 auto; width: 200px; height: 100px;">
				<button style="width: 200px; height: 100px; border-radius: 20px;">다음
					단계로</button>
			</div>
		</div>
	</div>
</section>
<%@include file="../template/footer.jsp"%>