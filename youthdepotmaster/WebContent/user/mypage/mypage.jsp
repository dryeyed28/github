<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../template/header.jsp"%>
<section id="content" class="gray-area">
	<div class="container">
		<div class="row">
			<div id="main" class="col-sm-8 col-md-9">
				<div class="booking-section travelo-box">
					<form class="cruise-booking-form">
						<div class="person-information">
							<h2></h2>
							<div class="row">
								<div class="form-group col-sm-6 col-md-5">
									<label>아이디 &nbsp; My Id</label>
								</div>
								<div class=" form-group col-sm-6 col-md-5"></div>
							</div>
							<div class="row">
								<div class="form-group col-sm-6 col-md-5">
									<label>이름 &nbsp;NAME</label>
								</div>
								<!-- <div class=" form-group col-sm-6 col-md-5">
	                                     	<label></label>
	                                    </div>  -->
							</div>


							<div class="row">
								<div class="form-group col-sm-6 col-md-5">
									<label>나의 열정</label>
								</div>
								<div class=" form-group col-sm-6 col-md-5">
									<a href="링크 할 주소"><u>0p</u></a>
									<button type="submit" class="btn-small"
										style="font-size: 12px; margin-left: 30px;">열정 충전하기</button>
								</div>
							</div>
							<div class="row">
								<a class="icon-fundinglist"
									href="/web/wmypage/myfunding/fundinglist"><img
									src="funding.PNG">내 펀딩내역보기</a> <a class="icon-fundinglist"
									href="/web/wmypage/myfunding/fundinglist"><img
									src="funding.PNG" style="margin-left: 30px;">만든 프로젝트 보기</a> <a
									class="icon-fundinglist"
									href="/web/wmypage/myfunding/fundinglist"><img
									src="heart.PNG" style="margin-left: 30px"> 좋아한 프로젝트 보기</a>
							</div>


						</div>

						<div class="row">
							<div class="form-group col-sm-6 col-md-5">
								<label>&nbsp;</label>

							</div>
							<div class="form-group col-sm-6 col-md-5">
								<label>&nbsp;</label>
							</div>

							<div class="row">
								<div class="form-group col-sm-6 col-md-5">
									<label>휴대전화 번호 &nbsp;010-1111-2222 </label>
								</div>
								<div class="form-group col-sm-6 col-md-5">

									<a href="cruise-detailed.html" class="button"
										style="width: 100px; height: 30px;">변경하기</a>
								</div>
							</div>


							<div class="row">
								<div class="form-group col-sm-6 col-md-5">
									<label>주소</label> <input type="text"
										class="input-text full-width" value="" placeholder="" readonly />
								</div>
								<div class="form-group col-sm-6 col-md-5">
									<label>&nbsp;</label> <a href="cruise-detailed.html"
										class="button" style="width: 100px; height: 30px;">변경하기</a>
								</div>
							</div>

							<div class="row">
								<div class="form-group col-sm-6 col-md-5">
									<input type="text" class="input-text full-width" value=""
										placeholder="" readonly />
								</div>

							</div>


							<hr/ >

						</div>
						<hr>
						<div class="form-group row">
							<div class="form-group col-sm-6 col-md-5">
								<label>내 정보 변경내역</label>
							</div>
							<div class="form-group col-sm-6 col-md-5">
								<button type="submit" class="btn-small" style="font-size: 12px;">저장하기</button>
							</div>
							<div class="form-group col-sm-6 col-md-5">
								<label>더이상 청춘창고를 이용하지 않는다면</label>
							</div>
							<div class="form-group col-sm-6 col-md-5">
								<button type="submit" class="btn-small" style="font-size: 12px;">탈퇴하기</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="sidebar col-sm-4 col-md-3">
				<div class="booking-details travelo-box">
					<h4>
						<img src="alam.PNG"> 내 알림내역</a>
					</h4>
					<article class="image-box cruise listing-style1">

						<div class="travel-title">
							<label>내 프로젝트 알림 <a href="링크 할 주소"><u>0개</u></a></label> <label>내
								활동 알림 <a href="링크 할 주소"><u>0개</u></a>
							</label> <label> <a href="링크 할 주소"><u>0개</u></a></label>

						</div>
						</figure>
						<div class="details">
							<div class="feedback">
								<div data-placement="bottom" data-toggle="tooltip"
									title="4 stars" class="five-stars-container">
									<span style="width: 80%;" class="five-stars"></span>
								</div>
								<span class="review">270 reviews</span>
							</div>
							<div class="constant-column-3 timing clearfix">
								<div class="check-in">
									<label>Departs</label> <span>FEB 10, 2014<br />10 am
									</span>
								</div>
								<div class="duration text-center">
									<i class="soap-icon-clock"></i> <span>4 Nights</span>
								</div>
								<div class="check-out">
									<label>Returns</label> <span>feb 15, 2014<br />2 PM
									</span>
								</div>
							</div>
							<div class="guest">
								<small class="uppercase">1 grand suite for <span
									class="skin-color">2 Persons</span></small>
							</div>
						</div>
					</article>

					<h4>Other Details</h4>
					<dl class="other-details">
						<dt class="feature">room Type:</dt>
						<dd class="value">Grand Suite</dd>
						<dt class="feature">food &amp; dining:</dt>
						<dd class="value">$121</dd>
						<dt class="feature">Cruise price:</dt>
						<dd class="value">$529</dd>
						<dt class="feature">taxes and fees:</dt>
						<dd class="value">$173</dd>
						<dt class="total-price">Total Price</dt>
						<dd class="total-price-value">$823</dd>
					</dl>
				</div>

				<div class="travelo-box contact-box">
					<h4>Need Travelo Help?</h4>
					<p>We would be more than happy to help you. Our team advisor
						are 24/7 at your service to help you.</p>
					<address class="contact-details">
						<span class="contact-phone"><i class="soap-icon-phone"></i>
							1-800-123-HELLO</span> <br> <a class="contact-email" href="#">help@travelo.com</a>
					</address>
				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="../template/footer.jsp"%>

