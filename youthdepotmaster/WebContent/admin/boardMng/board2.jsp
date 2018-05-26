<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../template/top.jsp"%>
<%@include file="../template/aside.jsp"%>
<script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
</script>
<body>
<div id="page-wrapper">
  <div class="row">
	<div class="col-lg-12">
	  <h2 class="page-header">게시 관리 > FAQ</h2>
	</div>
  </div>
  
  <div class="row">
	<div class="col-lg-12">
	  <div class="panel panel-default">
		<div class="panel-heading">
			FAQ
		</div>
        <!-- /.panel-heading -->
      <div class="panel-body">
		<table width="100%" class="table table-bordered table-hover" id="dataTables-example">
           <thead>
              <tr>
            	<th><input type="checkbox"></th>
                <th>번호</th>
                <th>제목</th>
                <th>작성일자</th>
              </tr>
           </thead>
           <tbody>
              <tr>
                <td><input type="checkbox"></td>
                <td>공지</td>
                <td>청춘창고 이용관련 공지사항입니다.</td>
                <td>2018-05-06</td>
              </tr>
              <tr>
                  <td><input type="checkbox"></td>
                  <td>3</td>
                  <td>5월 가정의 달 이벤트</td>
                  <td>2018-05-01</td>
              </tr>
              <tr>
                  <td><input type="checkbox"></td>
                  <td>2</td>
                  <td>새로운 기능 소개</td>
                  <td>2018-03-02</td>
              </tr>
              <tr>
                  <td><input type="checkbox"></td>
                  <td>1</td>
                  <td>청춘창고 새해인사</td>
                  <td>2018-01-01</td>
              </tr>
           </tbody>
        </table>
      <div>
   		 선택글 &nbsp;
        <a class="btn btn-default">삭제</a>&nbsp;&nbsp;
        <a class="btn btn-default">이동</a>
      </div>
      <hr>
      <input type="button" value="글쓰기" style="borderRight">&nbsp;&nbsp;
      <input type="button" value="수정" style="borderRight">
	  </div>
      <!-- /.panel-body -->
      </div>
      <!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
   </div>
 </div>
 <!-- /#page-wrapper -->
</body>