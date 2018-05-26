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
                                            <label>이름</label>
                                            <input type="text" class="input-text full-width" value="" placeholder="" />
                                        </div>
                                       
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-sm-6 col-md-5">
                                            <label>아이디</label>
                                            <input type="text" class="input-text full-width" value="" placeholder="" />
                                        </div>
	                                    <div class=" form-group col-sm-6 col-md-5">
	                                     	<label>  &nbsp; </label>
	                                   		<a href="cruise-detailed.html" class="button"  style="width:100px; height:30px;">아이디 중복확인</a>  
	                                    </div> 
                                   </div>
                                   
                                   <div class="row">
                                        <div class="form-group col-sm-6 col-md-5">
                                            <label>별명</label>
                                            <input type="text" class="input-text full-width" value="" placeholder="" />
                                        </div>
	                                    <div class=" form-group col-sm-6 col-md-5">
	                                     	<label>  &nbsp; </label>
	                                   		<a href="cruise-detailed.html" class="button"  style="width:100px; height:30px;">별명 중복확인</a>  
	                                    </div> 
                                   </div>	       	                                     
                                        
                                     <div class="row">
                                       <div class=" form-group col-sm-6 col-md-5">
                                            <label>비밀번호</label>
                                            <input type="text" class="input-text full-width" value="" placeholder="" />
                                        </div>
                                     </div>  
                                    <div class="row">
                                        <div class="form-group col-sm-6 col-md-5">
                                    	     <label>비밀번호 확인</label>
                                             <input type="text" class="input-text full-width" value="" placeholder=""  />
                                              </div> 
                                        <div class="form-group col-sm-6 col-md-5">
                                              <label>비밀번호 일치확인</label>
                                        </div>
                                     </div>
                                        
                                        <div class="form-group col-sm-6 col-md-5">
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <label>생년월일</label>
                                                    <div class="datepicker-wrap">
                                                        <input type="text" class="input-text full-width" placeholder="mm/dd/yy" data-min-date="01/01/1900">
                                                    </div>
                                                </div>
                                                <div class="col-xs-6">
                                                    <label>성별</label>
                                                    <div>
                                                        <label class="radio radio-inline radio-square">
                                                            <input type="radio" name="성별" checked="checked">남자
                                                        </label>
                                                        <label class="radio radio-inline radio-square">
                                                            <input type="radio" name="gender">여자
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
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
                                            <label>휴대전화 번호</label>
                                            <input type="text" class="input-text full-width" value="" placeholder="" />
                                        </div>
                                        <div class="form-group col-sm-6 col-md-5">
                                            <label>&nbsp;</label>
                                            <a href="cruise-detailed.html" class="button"  style="width:100px; height:30px;">인증하기</a> 
                                        </div>   
                                   </div>
                                        
                                    <div class="row"> 
                                        <div class="form-group col-sm-6 col-md-5">
                                           <input type="text" class="input-text full-width" value="" placeholder="인증번호를 입력하세요" />
                                        </div>
                                        <div class="form-group col-sm-6 col-md-5">
                                           
                                            <a href="cruise-detailed.html" class="button" text-align:center;  style="width:100px; height:30px;font-size:13px;">인증번호 확인</a>
                                        </div>
                                    </div>
                                    
                                     <div class="row">
                                        <div class="form-group col-sm-6 col-md-5">
                                            <label>주소</label>
                                            <input type="text" class="input-text full-width" value="" placeholder="" readonly/>
                                        </div>
                                        <div class="form-group col-sm-6 col-md-5">
                                            <label>&nbsp;</label>
                                            <a href="cruise-detailed.html" class="button"  style="width:100px; height:30px;">우편번호 찾기</a> 
                                        </div>   
                                   </div>
                                   
                                   <div class="row">
                                        <div class="form-group col-sm-6 col-md-5">
                                        <input type="text"  class="input-text full-width" value="" placeholder="" readonly />
                                        </div>
                                        <div class="form-group col-sm-6 col-md-5">
                                         
                                           <input type="text" class="input-text full-width" value="" placeholder="나머지 주소를 입력해 주세요." />
                                        </div>   
                                   </div>
                                   
                                  
                                <hr />
  									<div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" name="ck1" value="1"> <span class="skin-color">이용약관, 개인정보 수집</span>에 모두 동의합니다.
                                            </label>
                                        </div>
                                    </div>
                                </div>
                              
                                <div class="form-group row">
                                    <div class="col-sm-6 col-md-5">
                                        <button type="submit" class="full-width btn-large" style="font-size:20px;font-weight:bold;" >가입하기</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="sidebar col-sm-4 col-md-3">
                        <div class="booking-details travelo-box">
                            <h4>Booking Details</h4>
                            <article class="image-box cruise listing-style1">
                                <figure class="clearfix">
                                    <a title="" href="cruise-detailed.html" class="hover-effect middle-block"><img class="middle-item" alt="" src="http://placehold.it/75x75"></a>
                                    <div class="travel-title">
                                        <h5 class="box-title">Carnival<small>baja mexico</small></h5>
                                        <a href="cruise-detailed.html" class="button">EDIT</a>
                                    </div>
                                </figure>
                                <div class="details">
                                    <div class="feedback">
                                        <div data-placement="bottom" data-toggle="tooltip" title="4 stars" class="five-stars-container"><span style="width: 80%;" class="five-stars"></span></div>
                                        <span class="review">270 reviews</span>
                                    </div>
                                    <div class="constant-column-3 timing clearfix">
                                        <div class="check-in">
                                            <label>Departs</label>
                                            <span>FEB 10, 2014<br />10 am</span>
                                        </div>
                                        <div class="duration text-center">
                                            <i class="soap-icon-clock"></i>
                                            <span>4 Nights</span>
                                        </div>
                                        <div class="check-out">
                                            <label>Returns</label>
                                            <span>feb 15, 2014<br />2 PM</span>
                                        </div>
                                    </div>
                                    <div class="guest">
                                        <small class="uppercase">1 grand suite for <span class="skin-color">2 Persons</span></small>
                                    </div>
                                </div>
                            </article>
                            
                            <h4>Other Details</h4>
                            <dl class="other-details">
                                <dt class="feature">room Type:</dt><dd class="value">Grand Suite</dd>
                                <dt class="feature">food &amp; dining:</dt><dd class="value">$121</dd>
                                <dt class="feature">Cruise price:</dt><dd class="value">$529</dd>
                                <dt class="feature">taxes and fees:</dt><dd class="value">$173</dd>
                                <dt class="total-price">Total Price</dt><dd class="total-price-value">$823</dd>
                            </dl>
                        </div>
                        
                        <div class="travelo-box contact-box">
                            <h4>Need Travelo Help?</h4>
                            <p>We would be more than happy to help you. Our team advisor are 24/7 at your service to help you.</p>
                            <address class="contact-details">
                                <span class="contact-phone"><i class="soap-icon-phone"></i> 1-800-123-HELLO</span>
                                <br>
                                <a class="contact-email" href="#">help@travelo.com</a>
                            </address>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<%@include file="../template/footer.jsp"%>