<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../template/top.jsp"%>
<%@include file="../template/aside.jsp"%>

<div id="page-wrapper">
     <div class="row">
         <div class="col-lg-12">
             <h1 class="page-header">Forms</h1>
         </div>
         <!-- /.col-lg-12 -->
     </div>
     <!-- /.row -->
     <div class="row">
         <div class="col-lg-12">
             <div class="panel panel-default">
                 <div class="panel-heading">
                    	프로젝트 신청 내용
                 </div>
                 <div class="panel-body">
                     <div class="row">
                         <div class="col-lg-6">
                                 <div class="form-group">
                                    <label>프로젝트 번호 : data</label>
                                    <div class="btn-group">
				  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
				   신청상태 <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" role="menu">
				    <li><a href="#">승인</a></li>
				    <li><a href="#">검토중</a></li>
				    <li class="divider"></li>
				    <li><a href="#">반려</a></li>
				  </ul>
									</div>
                                 </div>
                                 <div class="form-group">
                                     <label>프로젝트 제목 : data</label>
                                 </div>
								 <div class="form-group">
                                     <label>프로젝트 소제목 : data</label>
                                 </div>
                                 <div class="form-group">
                                     <label>목표 금액</label>
                                     <p class="form-control-static">4,000,000원</p>
                                 </div>
                                 <div class="form-group">
                                     <label>카테고리</label>
                                     <p class="form-control-static">신청에서 선택한 버튼 값</p>
                                 </div>
                                 <div class="form-group">
                                     <label>핵심메시지</label>
                                     <textarea class="form-control" rows="3"></textarea>
                                 </div>
                                 <div class="form-group">
                                     <label>프로젝트 스토리</label>
                                     <textarea class="form-control" rows="10"></textarea>
                                 </div>
                                 <div class="form-group">
                                     <label>프로젝트 대표 이미지</label>
                                     <input type="file">
                                 </div>
                                 <div class="form-group">
                                     <label>프로젝트 영상</label>
                                     <input type="file">
                                 </div>
                            
                                 <div class="form-group input-group">
                                     <input type="text" class="form-control">
                                     <span class="input-group-btn">
                                         <button class="btn btn-default" type="button"><i class="fa fa-search"></i>
                                         </button>
                                     </span>
                                 </div>
                         </div>
                         <!-- /.col-lg-6 (nested) -->
					      <button>목록</button>
                     </div>
                     <!-- /.row (nested) -->
                 </div>
                 <!-- /.panel-body -->
             </div>
             <!-- /.panel -->
         </div>
         <!-- /.col-lg-12 -->
     </div>
     <!-- /.row -->
 </div>
 <!-- /#page-wrapper -->