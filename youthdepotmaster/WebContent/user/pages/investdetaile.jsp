<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../template/header.jsp"%>
        <section id="content">
            <div class="container">
                <div class="row">
					<div id="main" class="col-md-9">
						<div class="tab-container style1" id="travel-guide">
							<ul class="tabs full-width">
								<li class="active"><a href="#travel-guide-info"
									data-toggle="tab">스토리</a></li>
								<li class=""><a href="#travel-guide-sports"
									data-toggle="tab">댓글</a></li>
								<li><a href="#travel-guide-culture-history"
									data-toggle="tab">새소식</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane fade active in" id="travel-guide-info">
									<ul>
										<li><img src="http://placehold.it/900x500" alt="" /></li>
										<li><img src="http://placehold.it/900x500" alt="" /></li>
										<li><img src="http://placehold.it/900x500" alt="" /></li>
										<li><img src="http://placehold.it/900x500" alt="" /></li>
										<li><img src="http://placehold.it/900x500" alt="" /></li>
										<li><img src="http://placehold.it/900x500" alt="" /></li>
										<li><img src="http://placehold.it/900x500" alt="" /></li>
										<li><img src="http://placehold.it/900x500" alt="" /></li>
										<li><img src="http://placehold.it/900x500" alt="" /></li>
										<li><img src="http://placehold.it/900x500" alt="" /></li>
										<li><img src="http://placehold.it/900x500" alt="" /></li>
									</ul>
									<table id="commentTable" class="table table-condensed"></table>
									<table class="table table-condensed">
										<tr>
											<td>
											<span class="form-inline" role="form">
													<div>
													<div class="form-group">
														<input type="text" id="commentParentName"
															name="commentParentName" class="form-control col-lg-2"
															data-rule-required="true" placeholder="이름" maxlength="10">
													</div>
													<div class="form-group">
														<input type="password" id="commentParentPassword"
															name="commentParentPassword"
															class="form-control col-lg-2" data-rule-required="true"
															placeholder="패스워드" maxlength="10">
													</div>
													<div class="form-group">
														<button type="button" id="commentParentSubmit"
															name="commentParentSubmit" class="btn btn-default">확인</button>
													</div>
													  <textarea id="commentParentText"
														class="form-control col-lg-12" style="width: 100%"
														rows="4"></textarea>
													</div>
											</span>
											</td>
										</tr>
									</table>
									<table class="table table-condensed">
										<thead>
											<tr>
												<td><span style='float: right'>
														<button type="button" id="list" class="btn btn-default">목록</button>
														<button type="button" id="modify" class="btn btn-default">수정</button>
														<button type="button" id="delete" class="btn btn-default">삭제</button>
														<button type="button" id="write" class="btn btn-default">글쓰기</button>
												</span></td>
											</tr>
										</thead>
									</table>
								</div>
								<div class="tab-pane fade" id="travel-guide-sports">
									<table class="table table-condensed">
										<tr>
											<td><span class="form-inline" role="form">
													<div>
													<div class="form-group">
														<input type="text" id="commentParentName"
															name="commentParentName" class="form-control col-lg-2"
															data-rule-required="true" placeholder="이름" maxlength="10">
													</div>
													<div class="form-group">
														<input type="password" id="commentParentPassword"
															name="commentParentPassword"
															class="form-control col-lg-2" data-rule-required="true"
															placeholder="패스워드" maxlength="10">
													</div>
													<div class="form-group">
														<button type="button" id="commentParentSubmit"
															name="commentParentSubmit" class="btn btn-default">확인</button>
													</div>
													</div> <textarea id="commentParentText"
														class="form-control col-lg-12" style="width: 100%"
														rows="4"></textarea>
											</span></td>
										</tr>
									</table>
									<table class="table table-condensed">
										<thead>
											<tr>
												<td><span style='float: right'>
														<button type="button" id="list" class="btn btn-default">목록</button>
														<button type="button" id="modify" class="btn btn-default">수정</button>
														<button type="button" id="delete" class="btn btn-default">삭제</button>
														<button type="button" id="write" class="btn btn-default">글쓰기</button>
												</span></td>
											</tr>
										</thead>
									</table>
								</div>
							<div class="tab-pane fade" id="travel-guide-culture-history">
								<table class="table table-condensed">
									<thead>
										<tr align="center">
											<th width="10%">제목</th>
											<th width="60%">게시판 제목 입니다.</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>작성일</td>
											<td>2014-12-15 04:45:23</td>
										</tr>
										<tr>
											<td>글쓴이</td>
											<td>husk <span style='float: right'>조회 : 0</span>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<p>이름, 패스워드 내용을 적으시고 확인버튼을 누르세요.</p>

											</td>
										</tr>
									</tbody>
								</table>
								<table id="commentTable" class="table table-condensed"></table>
								<table class="table table-condensed">
									<tr>
										<td><span class="form-inline" role="form">
												<div>
												<div class="form-group">
													<input type="text" id="commentParentName"
														name="commentParentName" class="form-control col-lg-2"
														data-rule-required="true" placeholder="이름" maxlength="10">
												</div>
												<div class="form-group">
													<input type="password" id="commentParentPassword"
														name="commentParentPassword" class="form-control col-lg-2"
														data-rule-required="true" placeholder="패스워드"
														maxlength="10">
												</div>
												<div class="form-group">
													<button type="button" id="commentParentSubmit"
														name="commentParentSubmit" class="btn btn-default">확인</button>
												</div>
												</div> <textarea id="commentParentText"
													class="form-control col-lg-12" style="width: 100%" rows="4"></textarea>
										</span></td>
									</tr>
								</table>
								<table class="table table-condensed">
									<thead>
										<tr>
											<td><span style='float: right'>
													<button type="button" id="list" class="btn btn-default">목록</button>
													<button type="button" id="modify" class="btn btn-default">수정</button>
													<button type="button" id="delete" class="btn btn-default">삭제</button>
													<button type="button" id="write" class="btn btn-default">글쓰기</button>
											</span></td>
										</tr>
									</thead>
								</table>
							  </div>
							</div>
						</div>
					</div>
					<div class="sidebar col-md-3">
                        <article class="detailed-logo">
                            <div class="details">
                                <div class="feedback clearfix">
                                    <div class="progress-bar" role="progressbar"
														style="width: 100%;" aria-valuenow="25" aria-valuemin="0"
														aria-valuemax="100">290%</div>
                                </div>
                                <h2 class="box-title">19일 남음</h2>
                                <span class="price clearfix">
                                    <small class="pull-left">달성금액 </small>
                                    <span class="pull-right">999999원</span>
                                </span>
                                <h1>100명 서포터</h1><hr>
                                <a class="button yellow full-width uppercase btn-small">펀딩하기</a>
                            </div>
                        </article>
                        <div class="travelo-box contact-box">
                            <h4>창고지기 정보</h4>
                            <p>We would be more than happy to help you. Our team advisor are 24/7 at your service to help you.</p>
                            <address class="contact-details">
                                <span class="contact-phone"><i class="soap-icon-phone"></i> 1-800-123-HELLO</span>
                                <br>
                                <a class="contact-email" href="#">help@travelo.com</a>
                            </address>
                        </div>
                        <div class="travelo-box book-with-us-box">
                            <h4>펀딩 선택</h4>
                            <ul>
                                <li>
                                    <i class="soap-icon-hotel-1 circle"></i>
                                    <h5 class="title"><a href="#">135,00+ Hotels</a></h5>
                                    <p>Nunc cursus libero pur congue arut nimspnty.</p>
                                </li>
                                <li>
                                    <i class="soap-icon-savings circle"></i>
                                    <h5 class="title"><a href="#">Low Rates &amp; Savings</a></h5>
                                    <p>Nunc cursus libero pur congue arut nimspnty.</p>
                                </li>
                                <li>
                                    <i class="soap-icon-support circle"></i>
                                    <h5 class="title"><a href="#">Excellent Support</a></h5>
                                    <p>Nunc cursus libero pur congue arut nimspnty.</p>
                                </li>
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
                                        <a href="#">
                                            <img src="http://placehold.it/63x63" alt="" width="63" height="63" />
                                        </a>
                                    </div>
                                    <div class="description">
                                        <h5 class="s-title"><a href="#">Amazing Places</a></h5>
                                        <p>Purus ac congue arcu cursus ut vitae pulvinar massaidp.</p>
                                        <span class="date">25 Sep, 2013</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumb">
                                        <a href="#">
                                            <img src="http://placehold.it/63x63" alt="" width="63" height="63" />
                                        </a>
                                    </div>
                                    <div class="description">
                                        <h5 class="s-title"><a href="#">Travel Insurance</a></h5>
                                        <p>Purus ac congue arcu cursus ut vitae pulvinar massaidp.</p>
                                        <span class="date">24 Sep, 2013</span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <h2>Mailing List</h2>
                            <p>Sign up for our mailing list to get latest updates and offers.</p>
                            <br />
                            <div class="icon-check">
                                <input type="text" class="input-text full-width" placeholder="your email" />
                            </div>
                            <br />
                            <span>We respect your privacy</span>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <h2>About Travelo</h2>
                            <p>Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massaidp nequetiam lore elerisque.</p>
                            <br />
                            <address class="contact-details">
                                <span class="contact-phone"><i class="soap-icon-phone"></i> 1-800-123-HELLO</span>
                                <br />
                                <a href="#" class="contact-email">help@travelo.com</a>
                            </address>
                            <ul class="social-icons clearfix">
                                <li class="twitter"><a title="twitter" href="#" data-toggle="tooltip"><i class="soap-icon-twitter"></i></a></li>
                                <li class="googleplus"><a title="googleplus" href="#" data-toggle="tooltip"><i class="soap-icon-googleplus"></i></a></li>
                                <li class="facebook"><a title="facebook" href="#" data-toggle="tooltip"><i class="soap-icon-facebook"></i></a></li>
                                <li class="linkedin"><a title="linkedin" href="#" data-toggle="tooltip"><i class="soap-icon-linkedin"></i></a></li>
                                <li class="vimeo"><a title="vimeo" href="#" data-toggle="tooltip"><i class="soap-icon-vimeo"></i></a></li>
                                <li class="dribble"><a title="dribble" href="#" data-toggle="tooltip"><i class="soap-icon-dribble"></i></a></li>
                                <li class="flickr"><a title="flickr" href="#" data-toggle="tooltip"><i class="soap-icon-flickr"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bottom gray-area">
                <div class="container">
                    <div class="logo pull-left">
                        <a href="index.html" title="Travelo - home">
                            <img src="images/logo.png" alt="Travelo HTML5 Template" />
                        </a>
                    </div>
                    <div class="pull-right">
                        <a id="back-to-top" href="#" class="animated" data-animation-type="bounce"><i class="soap-icon-longarrow-up circle"></i></a>
                    </div>
                    <div class="copyright pull-right">
                        <p>&copy; 2014 Travelo</p>
                    </div>
                </div>
            </div>
        </footer>
<%@include file="../template/footer.jsp"%>
<script>
  

	$(function() {

		//제일 하단에 있는 depth1의 댓글을 다는 이벤트
		$("div.form-group>button").click(function(event) {
			var pName = $("input[name=commentParentName]");
            var pPassword = $("#commentParentPassword");//패스워드를 노출 시켰는데 저장하고 나서 저장한 날짜를 보여줄 예정
            var pText = $("#commentParentText");
              
           
							var commentParentText = '<tr id="r1" name="commentParentCode">'
									+ '<td colspan=2>'
									+ '<strong>'
									+ '</strong> '
									+ pPassword.val()
									+ ' <a style="cursor:pointer;" name="pAdd">답글</a> | <a style="cursor:pointer;" name="pDel">삭제</a><p>'
									+ pText.val().replace(/\n/g, "<br>")
									+ '</p>' + '</td>' + '</tr>';

							//테이블의 tr자식이 있으면 tr 뒤에 붙인다. 없으면 테이블 안에 tr을 붙인다.
							if ($('#commentTable').contents().size() == 0) {
								$('#commentTable').append(commentParentText);
							} else {
								$('#commentTable tr:last').after(
										commentParentText);
							}

							$("input[name=commentParentName]").val("");
							$("#commentParentPassword").val("");
							$("#commentParentText").val("");

						});

		//댓글의 댓글을 다는 이벤트
		$(document)
				.on(
						"click",
						"div.form-group>button",
						function() {
							var cName = $("#commentChildName");
                            var cPassword = $("#commentChildPassword");
                            var cText = $("#commentChildText");
                              
							var commentChildText = '<tr name="commentChildCode">'
									+ '<td style="width:1%"><span class="glyphicon glyphicon-arrow-right"></span></td>'
									+ '<td style="width:99%">'
									+ '<strong>'
									+ cName.val()
									+ '</strong> '
									+ cPassword.val()
									+ ' <a style="cursor:pointer;" name="cAdd">답글</a> | <a style="cursor:pointer;" name="cDel">삭제</a>'
									+ '<p>'
									+ cText.val().replace(/\n/g, "<br>")
									+ '</p>' + '</td>' + '</tr>';

							//앞의 tr노드 찾기
							var prevTr = $(this).parent().parent().parent()
									.parent().prev();
							//댓글 적는 에디터 삭제
							$("#commentEditor").remove();//여기에서 삭제를 해줘야 에디터tr을 안 찾는다.

							//댓글을 타고 올라가며 부모 tr을 찾음
							while (prevTr.attr("name") != "commentParentCode") {
								prevTr = prevTr.prev();
							}
							//while를 타는지 체크
							var check = false;
							//다음 노드가 댓글(depth1)의 댓글인지 찾기위해 next
							var nextTr = prevTr.next();
							//뒤에 댓글(depth1)의 댓글(depth2_1)이 없다면 바로 붙인다.
							if (nextTr.attr("name") != "commentChildCode") {
								prevTr.after(commentChildText);
							} else {
								//댓글(depth1)의 댓글(depth2_n)이 있는경우 마지막까지 찾는다.
								while (nextTr.attr("name") == "commentChildCode") {
									nextTr = nextTr.next();
									check = true;
								}
							}

							if (check) {//댓글(depth1)의 댓글(depth2_n)이 있다면 그 댓글(depth2_n) 뒤에 댓글(depth2_n+1) 추가
								nextTr = nextTr.prev();//while문에서 검색하느라 next로 넘거갔던거 다시 앞으로 돌려줌
								nextTr.after(commentChildText);
							}

						});

		//답글링크를 눌렀을때 에디터 창을 뿌려주는 이벤트, 삭제링크를 눌렀을때 해당 댓글을 삭제하는 이벤트
		$(document)
				.on(
						"click",
						"table#commentTable a",
						function() {//동적으로 버튼이 생긴 경우 처리 방식

							if ($(this).attr("name") == "pDel") {
								if (confirm("답글을 삭제 하시면 밑에 답글도 모두 삭제 됩니다. 정말 삭제하시겠습니까?") == true) { //확인

									var delComment = $(this).parent().parent();
									var nextTr = delComment.next();
									var delTr;
									//댓글(depth1)의 댓글(depth2_1)이 있는지 검사하여 삭제
									while (nextTr.attr("name") == "commentCode") {
										nextTr = nextTr.next();
										delTr = nextTr.prev();//삭제하고 넘기면 삭제되서 없기 때문에 다음값을 가져오기 어려워 다시 앞으로 돌려서 찾은 다음 삭제
										delTr.remove();
									}

									delComment.remove();

								} else { //취소
									return;
								}
							} else if ($(this).attr("name") == "cDel") {
								if (confirm("정말 삭제하시겠습니까??") == true) { //확인
									$(this).parent().parent().remove();
								} else { //취소
									return;
								}
							} else {
								//자기 부모의 tr을 알아낸다.
								var parentElement = $(this).parent().parent();
								//댓글달기 창을 없앤다.
								$("#commentEditor").remove();
								//부모의 하단에 댓글달기 창을 삽입
								var commentEditor = '<tr id="commentEditor">'
										+ '<td style="width:1%"> </td>'
										+ '<td>'
										+ '<span class="form-inline" role="form">'
										+ '<p>'
										+ '<div class="form-group">'
										+ '<input type="text" id="commentChildName" name="commentChildName" class="form-control col-lg-2" data-rule-required="true" placeholder="이름" maxlength="10">'
										+ '</div>'
										+ '<div class="form-group">'
										+ ' <input type="password" id="commentChildPassword" name="commentChildPassword" class="form-control col-lg-2" data-rule-required="true" placeholder="패스워드" maxlength="10">'
										+ '</div>'
										+ '<div class="form-group">'
										+ '<button type="button" id="commentChildSubmit" class="btn btn-default">확인</button>'
										+ '</div>'
										+ '</p>'
										+ '<textarea id="commentChildText" name="commentChildText" class="form-control" style="width:98%" rows="4"></textarea>'
										+ '</span>' + '</td>' + '</tr>';

								parentElement.after(commentEditor);
							}
						});
	});
</script>

