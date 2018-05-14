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
<script>
$(function() {
	$('button#create').click(function() {
		$.ajax({
			url:"makeboard.jsp",
			success: function(data){ 
				$("div#page-wrapper").empty();
				$('div#page-wrapper').html(data.trim());		
			}
		});
		return false;
	});
});
</script>
<style>
  div.btn-center > a{
  	width: 20%;
	margin-right: 3%;
	text-align: center
  }
</style>

<div id="page-wrapper">
    <div class="row">
       <div class="col-lg-12">
           <h2 class="page-header">게시판 관리 > 사용중인 게시판</h2>
       </div> 
       <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                  	사용중인 게시판
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <table width="100%" class="table table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                            	<th><input type="checkbox"></th>
                                <th>게시판ID</th>
                                <th>게시판 타이틀</th>
                                <th>분류</th>
                                <th>총 게시물</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>3</td>
                                <td>커뮤니티</td>
                                <td class="center">일반</td>
                                <td class="center">76</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>2</td>
                                <td>FAQ</td>
                                <td class="center">운영</td>
                                <td class="center">15</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>1</td>
                                <td>공지사항</td>
                                <td class="center">운영</td>
                                <td class="center">8</td>
                            </tr>
                        </tbody>
                    </table>
                    <hr>
                    <div class="btn-center" style="text-align: center">
                      <button id="create" class="btn btn-default btn-outline btn-primary">게시판 생성</button>
                      <button class="btn btn-default btn-outline btn-primary">게시판 수정</button>
                      <button class="btn btn-default btn-outline btn-primary">게시판 삭제</button>
                    </div>
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
