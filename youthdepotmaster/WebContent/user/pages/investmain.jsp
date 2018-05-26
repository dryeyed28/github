<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../template/header.jsp"%>
<section id="content">
	<div class="sort-by-section clearfix box"></div>
	<div class="container">
		<div id="main">
			<div class="row">
				<div class="travelo-box">
					<h5 class="box-title">Search Stories</h5>
					<div class="with-icon full-width">
						<input type="text" class="input-text full-width"
							placeholder="story name or category">
						<button class="icon green-bg white-color">
							<i class="soap-icon-search"></i>
						</button>
					</div>
				</div>
				<div class="col-sm-4 col-md-3">
					<h4 class="search-results-title">
						<i class="soap-icon-search"></i><b>1,984</b> results found.
					</h4>
					<div class="toggle-container filters-container">
						<div class="panel style1 arrow-right">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#price-filter" class="collapsed">정렬</a>
							</h4>
							<div id="price-filter" class="panel-collapse collapse">
								<div class="panel-content">
									<ul class="check-square filters-option">
										<li><a href="#">추천순</a></li>
										<li><a href="#">인기순</a></li>
										<li><a href="#">모금액순</a></li>
										<li><a href="#">마감임박순</a></li>
										<li><a href="#">최신순</a></li>
										<li><a href="#">종료된프로젝트</a></li>
									</ul>
								</div>
								<!-- end content -->
							</div>
						</div>

						<div class="panel style1 arrow-right">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#rating-filter"
									class="collapsed">카테고리</a>
							</h4>
							<div id="rating-filter"
								class="panel-collapse collapse filters-container">
								<div class="panel-content">
									<ul class="check-square filters-option">
										<li><a href="#">인터넷서비스</a></li>
										<li><a href="#">문화</a></li>
										<li><a href="#">디자인</a></li>
										<li><a href="#">뷰티/의료</a></li>
										<li><a href="#">제조/유통</a></li>
										<li><a href="#">농수산</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel style1 arrow-right">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#cruise-length-filter"
									class="collapsed">투자형태</a>
							</h4>
							<div id="cruise-length-filter" class="panel-collapse collapse">
								<div class="panel-content">
									<ul class="check-square filters-option">
										<li><a href="#">주식</a></li>
										<li><a href="#">채권</a></li>
										<li><a href="#">프로젝트 투자</a></li>
									</ul>
								</div>
								<!-- end content -->
							</div>
						</div>

						<div class="panel style1 arrow-right">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#cruise-line-filter"
									class="collapsed">소득공제</a>
							</h4>
							<div id="cruise-line-filter" class="panel-collapse collapse">
								<div class="panel-content">
									<ul class="check-square filters-option">
										<li><a href="#">인터넷서비스</a></li>
										<li><a href="#">문화</a></li>
										<li><a href="#">디자인</a></li>
										<li><a href="#">뷰티/의료</a></li>
										<li><a href="#">제조/유통</a></li>
										<li><a href="#">농수산</a></li>
									</ul>
									<a class="button btn-mini">MORE</a>
								</div>
							</div>
						</div>

						<div class="panel style1 arrow-right">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#cruise-preference-filter"
									class="collapsed">성장단계</a>
							</h4>
							<div id="cruise-preference-filter"
								class="panel-collapse collapse">
								<div class="panel-content">
									<ul class="check-square filters-option">
										<li><a href="#">소득공제 가능기업</a></li>
									</ul>
								</div>
							</div>
						</div>

						<div class="panel style1 arrow-right">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#cruise-cabin-type-filter"
									class="collapsed">채권 수익률</a>
							</h4>
							<div id="cruise-cabin-type-filter"
								class="panel-collapse collapse">
								<div class="panel-content">
									<ul class="check-square filters-option">
										<li><a href="#">1년 미만|창업</a></li>
										<li><a href="#">1년 이상 - 3년 미만|사업화</a></li>
										<li><a href="#">3년 이상 - 7년 미만|성장</a></li>
										<li><a href="#">7년 미만|안정화</a></li>
									</ul>
								</div>
							</div>
						</div>

						<div class="panel style1 arrow-right">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#modify-search-panel"
									class="collapsed">채권 투자기간</a>
							</h4>
							<div id="modify-search-panel" class="panel-collapse collapse">
								<div class="panel-content">
									<ul class="check-square filters-option">
										<li><a href="#">10% 미만</a></li>
										<li><a href="#">10% 이상 - 15% 미만</a></li>
										<li><a href="#">15% 이상</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-8 col-md-9">
					<div class="cruise-list image-box style3 cruise listing-style1">
						<div class="row">
							<div class="col-sm-6 col-md-4">
								<article class="box">
									<figure>
										<a href="ajax/cruise-slideshow-popup.html"
											class="hover-effect popup-gallery"><img width="270"
											height="160" alt="" src="http://placehold.it/270x160"></a>
									</figure>
									<div class="details">
										<span class="">모인 금액 10000원</span>
										<h4 class="box-title">프로젝트명</h4>
										<hr>
										<div class="progress">
											<div class="progress-bar" role="progressbar"
												style="width: 70%;" aria-valuenow="25" aria-valuemin="0"
												aria-valuemax="100">70%</div>
										</div>
										<hr>
										<span class="price">카테고리</span> <span>회사</span><br> <br>
										<div class="action">
											<a class="button btn-small full-width"
												href="cruise-detailed.html">펀딩하기</a>
										</div>
									</div>

								</article>
							</div>
							<div class="col-sm-6 col-md-4">
								<article class="box">
									<figure>
										<a href="ajax/cruise-slideshow-popup.html"
											class="hover-effect popup-gallery"><img width="270"
											height="160" alt="" src="http://placehold.it/270x160"></a>
									</figure>
									<div class="details">
										<span class="">모인 금액 10000원</span>
										<h4 class="box-title">프로젝트명</h4>
										<hr>
										<div class="progress">
											<div class="progress-bar" role="progressbar"
												style="width: 70%;" aria-valuenow="25" aria-valuemin="0"
												aria-valuemax="100">70%</div>
										</div>
										<hr>
										<span class="price">카테고리</span> <span>회사</span><br> <br>
										<div class="action">
											<a class="button btn-small full-width"
												href="cruise-detailed.html">펀딩하기</a>
										</div>
									</div>
								</article>
							</div>
							<div class="col-sm-6 col-md-4">
								<article class="box">
									<figure>
										<a href="ajax/cruise-slideshow-popup.html"
											class="hover-effect popup-gallery"><img width="270"
											height="160" alt="" src="http://placehold.it/270x160"></a>
									</figure>
									<div class="details">
										<span class="">모인 금액 10000원</span>
										<h4 class="box-title">프로젝트명</h4>
										<hr>
										<div class="progress">
											<div class="progress-bar" role="progressbar"
												style="width: 70%;" aria-valuenow="25" aria-valuemin="0"
												aria-valuemax="100">70%</div>
										</div>
										<hr>
										<span class="price">카테고리</span> <span>회사</span><br> <br>
										<div class="action">
											<a class="button btn-small full-width"
												href="cruise-detailed.html">펀딩하기</a>
										</div>
									</div>
								</article>
							</div>
							<div class="col-sm-6 col-md-4">
								<article class="box">
									<figure>
										<a href="ajax/cruise-slideshow-popup.html"
											class="hover-effect popup-gallery"><img width="270"
											height="160" alt="" src="http://placehold.it/270x160"></a>
									</figure>
									<div class="details">
										<span class="">모인 금액 10000원</span>
										<h4 class="box-title">프로젝트명</h4>
										<hr>
										<div class="progress">
											<div class="progress-bar" role="progressbar"
												style="width: 70%;" aria-valuenow="25" aria-valuemin="0"
												aria-valuemax="100">70%</div>
										</div>
										<hr>
										<span class="price">카테고리</span> <span>회사</span><br> <br>
										<div class="action">
											<a class="button btn-small full-width"
												href="cruise-detailed.html">펀딩하기</a>
										</div>
									</div>
								</article>
							</div>
							<div class="col-sm-6 col-md-4">
								<article class="box">
									<figure>
										<a href="ajax/cruise-slideshow-popup.html"
											class="hover-effect popup-gallery"><img width="270"
											height="160" alt="" src="http://placehold.it/270x160"></a>
									</figure>
									<div class="details">
										<span class="">모인 금액 10000원</span>
										<h4 class="box-title">프로젝트명</h4>
										<hr>
										<div class="progress">
											<div class="progress-bar" role="progressbar"
												style="width: 70%;" aria-valuenow="25" aria-valuemin="0"
												aria-valuemax="100">70%</div>
										</div>
										<hr>
										<span class="price">카테고리</span> <span>회사</span><br> <br>
										<div class="action">
											<a class="button btn-small full-width"
												href="cruise-detailed.html">펀딩하기</a>
										</div>
									</div>
								</article>
							</div>
							<div class="col-sm-6 col-md-4">
								<article class="box">
									<figure>
										<a href="ajax/cruise-slideshow-popup.html"
											class="hover-effect popup-gallery"><img width="270"
											height="160" alt="" src="http://placehold.it/270x160"></a>
									</figure>
									<div class="details">
										<span class="">모인 금액 10000원</span>
										<h4 class="box-title">프로젝트명</h4>
										<hr>
										<div class="progress">
											<div class="progress-bar" role="progressbar"
												style="width: 70%;" aria-valuenow="25" aria-valuemin="0"
												aria-valuemax="100">70%</div>
										</div>
										<hr>
										<span class="price">카테고리</span> <span>회사</span><br> <br>
										<div class="action">
											<a class="button btn-small full-width"
												href="cruise-detailed.html">펀딩하기</a>
										</div>
									</div>
								</article>
							</div>
						</div>
					</div>
					<a href="#" class="uppercase full-width button btn-large">load
						more listing</a>
				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="../template/footer.jsp"%>
<script>
	tjq(document).ready(
			function() {
				tjq("#-range").slider({
					range : true,
					min : 0,
					max : 1000,
					values : [ 100, 800 ],
					slide : function(event, ui) {
						tjq(".min-price-label").html("$" + ui.values[0]);
						tjq(".max-price-label").html("$" + ui.values[1]);
					}
				});
				tjq(".min-price-label").html(
						"$" + tjq("#price-range").slider("values", 0));
				tjq(".max-price-label").html(
						"$" + tjq("#price-range").slider("values", 1));

				tjq("#cruise-length-range").slider({
					range : "min",
					min : 0,
					max : 12,
					value : 10,
					slide : function(event, ui) {
						tjq(".max-cruise-length").html(ui.value + " NIGHTS");
					}
				});
				tjq(".max-cruise-length")
						.html(
								tjq("#cruise-length-range").slider("value")
										+ " NIGHTS");

				tjq("#rating").slider({
					range : "min",
					value : 40,
					min : 0,
					max : 50,
					slide : function(event, ui) {

					}
				});
			});
</script>


