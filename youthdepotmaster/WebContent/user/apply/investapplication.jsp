<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--InvestInsertController 데이터 전송(href) >> 나의 프로젝트페이지로 이동--%>
<style>
.tab-container.full-width-style ul.tabs {
	width: 20%;
	float: left;
}

.tab-container.full-width-style .tab-content {
	float: left;
	width: 60%;
}

#border1 {
	border-style: dashed;
	margin: 2%;
	padding: 10px;
}

#content div {
	margin-bottom: 6%;
}
</style>
<%@include file="../template/header.jsp"%>
		<section id="content" class="gray-area">
			<div class="container">
				<div id="main">
					<div class="tab-container full-width-style arrow-left dashboard">
						<ul class="tabs">
							<li class="active"><a data-toggle="tab"
								href="#basic_information">기본정보</a></li>
							<li class=""><a data-toggle="tab" href="#story">스토리</a></li>
							<li class=""><a data-toggle="tab" href="#depot_information">기업정보</a></li>
							<li class=""><a data-toggle="tab" href="#calculate">정산</a></li>
						</ul>
						<div class="tab-content">

							<div id="basic_information" class="tab-pane fade in active">
								<h2>기본 정보</h2>
								<hr>
								<form>
									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>프로젝트 번호</h4>
											<p>와디즈와의 소통은 프로젝트 번호로 진행됩니다.</p>
											<input type="text" class="input-text full-width">
										</div>
									</div>
									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>와디즈 안내 가능 연락처</h4>
											<p>프로젝트와 관련된 중요 안내사항 (심사결과, 정산, 진행사항 안내 등)을 보내드릴 이메일과
												휴대폰번호를 입력해주세요. 정보 변경 및 인증은 회원정보설정에서 가능합니다</p>
											<input type="tel" class="input-text full-width">
										</div>
									</div>
									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>프로젝트 제목</h4>
											<p>제목만으로도 프로젝트 성격이나 투자를 예상 할 수 있도록 직관적이고 정확하게 작성해주세요</p>
											<input type="text" class="input-text full-width">
										</div>
									</div>

									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>프로젝트 짧은 제목</h4>
											<p>서포터 안내 SMS, 이메일 제목 등 공간이 부족한 곳에 쓰일 10자 이내 짧은 제목을
												입력해주세요. 띄어쓰기 및 기호는 지양해주세요.</p>
											<input type="text" class="input-text full-width">
										</div>
									</div>
									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>목표 금액</h4>
											<p>프로젝트를 통해 모으고자 하는 금액을 적어 주세요.</p>
											<input type="text" class="input-text full-width">
										</div>
									</div>
									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>프로젝트 대표 이미지</h4>
											<p>프로젝트 카드와 공유 이미지로 사용됩니다. 이미지 등록 가이드를 반드시 확인하고 이미지를
												등록해주시기 바랍니다.</p>
											<div class="fileinput col-sm-6 no-float no-padding">
												<input type="file" class="input-text col-sm-6"
													data-placeholder="select image/s" />
											</div>
										</div>
									</div>

									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>카테고리</h4>
											<p>프로젝트 카테고리의 분류를 선택하세요. 선택한 카테고리에서 해당 프로젝트가 노출됩니다.</p>
											<div class="selector full-width">
												<select>
													<option>테크/가전</option>
													<option>페션/잡화</option>
													<option>뷰티</option>
													<option>푸드</option>
													<option>홈리빙</option>
													<option>디자인소품</option>
													<option>여행/레저</option>
													<option>스포/모빌리티</option>
													<option>공연/컬쳐</option>
													<option>소셜/캠페인</option>
													<option>교육/키즈</option>
													<option>게임/취미</option>
													<option>출판</option>
													<option>기부/후원</option>
												</select>
											</div>
										</div>
									</div>
									<div class="row form-group">
										<div>
											<h4>투자 필수 인증서류</h4>
											<p>와디즈는 서포터에게 투자(제품 및 서비스)를 제공하는 온라인 유통이기 때문에 최소한의 인증 서류를
												받고 있습니다. - 심사 기간을 단축시키기 위해 심사 서류 업로드 과정이 검토 요청 이후에서 검토요청 전으로
												변경되었습니다.</p>
											<hr>
											<div class="row form-group" id="border1">
												<div>
													<h5>서포터에게 제공하는 리워드(제품/서비스)의 종류를 선택하세요</h5>
													<p>파트너사 파트너사를 통해 개설을 하게 되셨다면, 선택해주세요.</p>
													<div class="selector full-width">
														<select>
															<option>SW(소프트웨어)</option>
															<option>HW+SW</option>
															<option>화장품</option>
															<option>의약외품</option>
															<option>디자인제품(소품,패션,잡화,액세사리)</option>
															<option>디퓨저,향초,탈취제</option>
															<option>가공식품</option>
															<option>건강기능식품</option>
															<option>문화(공연,영화)</option>
															<option>출판</option>
															<option>기타</option>
														</select>
													</div>
												</div>

												<p>리워드에 맞는 심사 첨부</p>
												<div>
													<input type="file" class="input-text col-sm-6"
														data-placeholder="select image/s" />
												</div>
											</div>
										</div>
									</div>


									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>프로젝트 마감일</h4>
											<p>프로젝트 마감일을 입력해주세요. 펀딩 기간은 오픈일로 부터 평균 45일 정도 입니다. 오픈 후
												수정 불가하니 신중하게 선택해주세요.</p>
											<input type="date" class="input-text full-width">
										</div>
									</div>

									<div class="form-group">
										<button class="btn-medium">저장하기</button>
									</div>
								</form>
							</div>


							<div id="story" class="tab-pane fade">
								<h2>투자 스토리</h2>
								<hr>
								<form>
									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>영상등록</h4>
											<p>프로젝트에 우선 유튜브 혹은 비메오에 영상을 업로드해 주세요. 비메오는 해당 영상 URL을 바로
												올려도 되지만 유튜브의 경우, 해당 영상 페이지 하단의 공유(Share) 버튼을 클릭하면 나오는 짧은 링크를
												등록해 주세요.</p>

											<input type="url" class="input-text full-width">
										</div>
									</div>
									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>영상대체이미지</h4>
											<p>제목만으로도 프로젝트 성격이나 투자를 예상 할 수 있도록 직관적이고 정확하게 작성해주세요</p>
											<div class="fileinput col-sm-6 no-float no-padding">
												<input type="file" class="input-text col-sm-6"
													data-placeholder="select image/s" />
											</div>
										</div>
									</div>

									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>핵심메시지</h4>
											<p>참여자들이 페이지를 열었을 때 가장 처음 보는 문장으로, 사람들이 이 문장을 읽고 “아~ 이게
												어떤 프로젝트구나~” 라는 것을 알 수 있도록 작성해주세요. 3줄 이하로 작성되면 좋겠습니다. 너무 길지
												않게 적어주세요.</p>
											<textarea rows="6" class="input-text full-width"
												placeholder="상세설명을 적어주세요"></textarea>
										</div>
									</div>
									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>프로젝트 스토리</h4>
											<p>스토리 작성 가이드 보기스토리에 반드시 기입해야 하는 내용과 작성 요령을 알려드립니다.</p>
											<textarea rows="6" class="input-text full-width"
												placeholder="상세설명을 적어주세요"></textarea>
										</div>
									</div>
									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>검색용 태그</h4>
											<p>프로젝트 카드와 공유 이미지로 사용됩니다. 이미지 등록 가이드를 반드시 확인하고 이미지를
												등록해주시기 바랍니다.</p>
											<input type="text" class="input-text full-width">
										</div>
									</div>
									<div class="form-group">
										<button class="btn-medium">저장하기</button>
									</div>
								</form>
							</div>


							<div id="depot_information" class="tab-pane fade">
								<h2>기업 정보</h2>
								<hr>
								<form>
									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>기업 이름 (법인사업자만가능)</h4>
											<p>투자형 크라우드 펀딩은 법인사업자만 가능합니다</p>
											<input type="text" class="input-text full-width">
										</div>
									</div>
									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>사업자 형태</h4>
											<p>현재 사업자형태를 알려주세요</p>
											<div class="selector full-width">
												<select>
													<option>개인</option>
													<option>개인사업자</option>
													<option>법인사업자</option>
													<option>사회적기업(인증/예비)</option>
													<option>기타</option>
												</select>
											</div>
										</div>
									</div>
									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>사업자등록번호</h4>
											<p>>사업자등록증 상의 사업자등록번호를 작성해주세요.</p>
											<input type="text" class="input-text full-width">
										</div>
									</div>
									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>개업연월일(업력)</h4>
											<p>법인설립일을 작성해주세요</p>
											<input type="date" class="input-text full-width">
										</div>
									</div>
									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>회사 웹사이트 또는 sns(선택)</h4>
											<p>회사의 사이트나 facebook과 같은 sns 채널이 있다면 알려주세요</p>
											<input type="url" class="input-text full-width">
										</div>
									</div>

									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>담당자이름/직함</h4>
											<p>예)홍길동 대표</p>
											<input type="text" class="input-text full-width">
										</div>
									</div>

									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>담당자 연락처</h4>
											<p>서포터 문의 시 실시간 연락이 가능하고, 프로젝트 페이지에 노출가능한 대표번호를 입력해주세요.</p>
											<input type="tel" class="input-text full-width">
										</div>
									</div>
									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>사업자등록증 첨부</h4>
											<p>기업 심사를 위한 자료로 사용할 예정이며, 심사 이후에는 모두 파기되므로 안심하셔도 됩니다.</p>
											<div class="fileinput col-sm-6 no-float no-padding">

												<input type="file" class="input-text col-sm-6"
													data-placeholder="select image/s" />
											</div>
										</div>
									</div>
									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>투자회사 소개서 첨부</h4>
											<p>기업 심사를 위한 자료로 사용될 예정이며, 심사 이후에는 모두 파기되므로 안심하셔도 됩니다.</p>
											<div class="fileinput col-sm-6 no-float no-padding">

												<input type="file" class="input-text col-sm-6"
													data-placeholder="select image/s" />
											</div>
										</div>
									</div>
									<div class="row form-group">
										<div class="col-xs-12 col-sm-6 col-md-7">
											<h4>재무제표 첨부</h4>
											<p>기업 심사를 위한 자료로 사용될 예정이며, 심사 이후에는 모둗 파기되므로 안심하셔도 됩니다</p>
											<div class="fileinput col-sm-6 no-float no-padding">

												<input type="file" class="input-text col-sm-6"
													data-placeholder="select image/s" />
											</div>
										</div>
									</div>

									<div class="form-group">
										<button class="btn-medium">저장하기</button>
									</div>
								</form>
							</div>


							<div id="calculate" class="tab-pane fade">
								<h2>정산 정보</h2>
								<p>아래에 입력한 모든 정보는 정산과 관련된 전자 약정 체결을 위한 정보이니, 꼭 정확하게 기입해 주셔야
									합니다.</p>
								<hr>
								<form>
									<div class="row form-group">
										<div >
											<h4>수수료</h4>
											<p>와디즈 수수료 정책 확인 후 선택해주세요</p>
											<div>
												<div class="recent-activity">
													<h4>리워드 오픈 수수료는 7%(VAT 별도)입니다</h4>
													<p>
														부가 서비스 이용 시, 추가 수수료가 발생될 수 있습니다<br> 자세한 내용은 와디즈 수수료
														정책을 확인해주세요.
													</p>
													<div class="radio radio-inline">
														<label><input type="radio" name="yes"
															checked="checked">와디즈 수수료 정책을 확인하였습니다.</label>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="form-group">
										<button class="btn-medium">저장하기</button>
									</div>
								</form>
							</div>


						</div>
					</div>
				</div>
			</div>
		</section>
<%@include file="../template/footer.jsp"%>
	<script>
	tjq(document)
				.ready(
						function() {
							tjq("#reward .edit-profile-btn").click(function(e) {
								e.preventDefault();
								tjq(".view-profile").fadeOut();
								tjq(".edit-profile").fadeIn();
							});

							setTimeout(
									function() {
										tjq(".notification-area")
												.append(
														'<div class="info-box block"><span class="close"></span><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus ab quis a dolorem, placeat eos doloribus esse repellendus quasi libero illum dolore. Esse minima voluptas magni impedit, iusto, obcaecati dignissimos.</p></div>');
									}, 10000);
						});
		tjq('a[href="#reward"]').on('shown.bs.tab', function(e) {
			tjq(".view-profile").show();
			tjq(".edit-profile").hide();
		});
	</script>

