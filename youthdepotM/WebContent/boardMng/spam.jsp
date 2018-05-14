<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../template/top.jsp"%>
<%@include file="../template/aside.jsp"%>

<div id="page-wrapper">
  <div class="row">
	<div class="col-lg-12">
	  <h2 class="page-header">스팸 관리</h2>
	</div>
  </div>
  
  <div class="row">
	<div class="col-lg-12">
	  <div class="panel panel-default">
		<div class="panel-heading">
	  		<select name="board">
			    <optgroup label="커뮤니티">
			      <option value="Q&A">질문과 답변</option>
			      <option value="community">커뮤니티</option>
			    </optgroup>
			    <optgroup label="프로젝트">
			      <option value="news">새소식</option>
			      <option value="reple">댓글</option>
			    </optgroup>
		    </select>
		</div>
        <!-- /.panel-heading -->
        
      <div class="panel-body">
        <table width="100%" class="table table-bordered table-hover" id="dataTables-example">
           <thead>
              <tr>
            	<th><input type="checkbox"></th>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일자</th>
                <th>신고수</th>
              </tr>
           </thead>
           <tbody>
              <tr>
                <td><input type="checkbox"></td>
                <td>2</td>
                <td>git 기능 소개</td>
                <td>id2</td>
                <td>2018-03-02</td>
                <td>5</td>
              </tr>
           </tbody>
        </table>
      </div>
      </div>
        <button class="btn btn-outline btn-primary">삭제</button>
    </div>
  </div>
</div>