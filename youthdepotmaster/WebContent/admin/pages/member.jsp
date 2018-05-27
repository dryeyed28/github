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
	$('button#modify').click(function() {
		$.ajax({
			url:"memModify.jsp",
			success: function(data){ 
				$("div#page-wrapper").empty();
				$('div#page-wrapper').html(data.trim());		
			}
		});
		return false;
	});
});
</script>
<body>
<div id="page-wrapper">
  <div class="row">
	<div class="col-lg-12">
	  <h2 class="page-header">회원관리</h2>
	</div>
  </div>
  
  <div class="row">
	<div class="col-lg-12">
	  <div class="panel panel-default">
		<div class="panel-heading">
			회원정보 관리
		</div>
        <!-- /.panel-heading -->
        
      <div class="panel-body">
		<table width="100%" class="table table-bordered table-hover" id="dataTables-example">
           <thead>
              <tr>
            	<th><input type="checkbox"></th>
                <th>회원번호</th>
                <th>아이디</th>
                <th>비밀번호</th>
                <th>이름</th>
                <th>전화번호</th>
                <th>이메일주소</th>
                <th>가입일</th>
                <th>탈퇴일</th>
                <th>창고지기</th>
              </tr>
           </thead>
           <tbody>
              <tr>
                <td><input type="checkbox"></td>
                <td>1</td>
                <td>id1</td>
                <td>*********</td>
                <td>정기태</td>
                <td>01090009000</td>
                <td>rlxo1@naver.com</td>
                <td>2018/05/11</td>
                <td></td>
                <td>투자</td>
            </tr>
            <tr>
            	<td><input type="checkbox"></td>
           		<td>2</td>
                <td>id2</td>
                <td>**********</td>
                <td>안인오</td>
                <td>01090009001</td>
                <td>dlsdh1@daum.net</td>
                <td>2017/05/11</td>
                <td></td>
                <td>리워드</td>
            </tr>
            <tr>
            	<td><input type="checkbox"></td>
                <td>3</td>
                <td>id3</td>
                <td>****</td>
                <td>null</td>
                <td>null</td>
                <td>null</td>
                <td>2017/05/10</td>
                <td>2018/05/10</td>
                <td>None</td>
            </tr>
           </tbody>
        </table>
      <br>
      <div class="btn-member" style="text-align: right">
        <button id="modify" class="btn btn-outline btn-primary">회원 수정</button>
        <button id="del" class="btn btn-outline btn-danger">회원 탈퇴</button>
      </div>

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