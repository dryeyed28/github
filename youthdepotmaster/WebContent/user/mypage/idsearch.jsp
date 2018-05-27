<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.a1 {
	width: 200px;
	height: 150px;
	display: block;
	padding: 10px;
	white-space: nowrap;
	overflow: hidden; /*
  	text-align: center;*/
	text-overflow: ellipsis;
}

.c1 {
	border: solid 1px;
	display: inline-block;
	margin: 10px;
}

.tab-content {
	width: 1000px;
}

.button {
	width: 180px;
}

.img {
	width: 200px;
	height: 200px;
}
</style>
<%@include file="../template/header.jsp"%>
<section id="content" class="gray-area">
	<div class="container shortcode">
		<div class="block">
			<div class="row">
				<div class="col-md-6">
					<h2>청춘창고 내정보</h2>
					<div class="tab-container box">
						<ul class="tabs">
							<li class="active"><a href="#idsearch" data-toggle="tab">아이디 찾기</a></li>
							<li><a href="#pwsearch" data-toggle="tab">비밀번호 찾기</a></li>							
						</ul>
						<div class="tab-content">
							<div class="tab-pane fade in active" id="idsearch">
								
									<form class="cruise-booking-form">
									<h4>본인확인 이메일 주소와 입력한 이메일 주소가 같아야, 인증번호를 받을 수 있습니다</h4>
									
									 <div class="row">
            	                       	<div class="form-group col-sm-6 col-md-5">
                        	                <label>이름</label>
                    	                    <input type="text" class="input-text full-width" value=""/>
                	                    </div>
	                        	      <div class=" form-group col-sm-6 col-md-5">
	                            		   	<label>  &nbsp; </label>
	                             			
	                              	 </div> 
                                	</div>
                                	<div class="row">
            	                       	<div class="form-group col-sm-6 col-md-5">
                        	                <label>이메일 주소</label>
                    	                    <input type="text" class="input-text full-width" value=""/>
                	                    </div>
	                        	      <div class=" form-group col-sm-6 col-md-5">
	                            		   	<label>  &nbsp; </label>
	                             			<a href="cruise-detailed.html" class="button"   style="width:150px; height:30px;font-size:12px;">인증번호 받기</a>  
	                              	 </div> 
                                	</div>
                                	<div class="row">
            	                       	<div class="form-group col-sm-6 col-md-5">
                        	                <label>&nbsp;</label>
                    	                    <input type="text" class="input-text full-width" value=""  placeholder="인증번호6자리 입력해 주세요"/>
                	                    </div>
	                        	      <div class=" form-group col-sm-6 col-md-5">
	                            		   	<label>  &nbsp; </label>
	                             			<a href="cruise-detailed.html" class="button" style="width:150px; height:30px;font-size:12px;">인증번호 입력 </a>  
	                              	 </div> 
                                	</div>
                                	
                               </form> 
                           </div>
                     
                     <div class="tab-pane fade" id="pwsearch">
                     	<form class="cruise-booking-form">     
						<h4>본인확인 이메일 주소로 임시 비밀번호를 발송해 드립니다</h4>
							 <div class="row">
          	                       	<div class="form-group col-sm-6 col-md-5">
                      	                <label>이름</label>
                  	                    <input type="text" class="input-text full-width" value=""/>
              	                    </div>
                       	      <div class=" form-group col-sm-6 col-md-5">
                           		   	<label>  &nbsp; </label>
                            			
                             	 </div> 
                              	</div>
                              	<div class="row">
          	                       	<div class="form-group col-sm-6 col-md-5">
                      	                <label>이메일 주소</label>
                  	                    <input type="text" class="input-text full-width" value=""/>
              	                    </div>
                       	      <div class=" form-group col-sm-6 col-md-5">
                           		   	<label>  &nbsp; </label>
                            			<a href="cruise-detailed.html" class="button" style="width:150px; height:30px;font-size:12px;">임시 비밀번호 받기</a>  
                             	 </div> 
                               </div> 	
	                     </form>
	                   </div>
	               	 </div>
	              </div>
	          </div>
		</div>
		</div>
	</div>	
</section>
<%@include file="../template/footer.jsp"%>

