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
	  <h2 class="page-header">결제 관리 > 전체결제 관리</h2>
	</div>
  </div>
  
  <div class="row">
	<div class="col-lg-12">
	  <div class="panel panel-default">
		<div class="panel-heading">
			전체결제 관리
		</div>
        <!-- /.panel-heading -->
        
      <div class="panel-body">
		<table width="100%" class="table table-bordered table-hover" id="dataTables-example">
           <thead>
              <tr>
            	<th><input type="checkbox"></th>
                <th>창고지기ID</th>
            	<th>종류</th>
                <th>프로젝트ID</th>
                <th>프로젝트현황</th>
                <th>프로젝트마감일</th>
                <th>모금액</th>
                <th>수수료(%)</th>
                <th>이익</th>
                <th>상태</th>
              </tr>
           </thead>
           <tbody>
              <tr>
                <td><input type="checkbox"></td>
                <td>id4</td>
                <td>리워드</td>
                <td>12345678</td>
                <td>성공</td>
                <td>2018-05-08</td>
                <td>550,000</td>
                <td>7</td>
                <td>38,500</td>
                <td>입금대기</td>
              </tr>
              <tr>
                  <td><input type="checkbox"></td>
                  <td>id5</td>
	              <td>리워드</td>
	              <td>12345670</td>
	              <td>성공</td>
	              <td>2018-05-03</td>
	              <td>800,000</td>
	              <td>7</td>
	              <td>56,000</td>
	              <td>입금완료</td>
              </tr>
              <tr>
                  <td><input type="checkbox"></td>
                  <td>id5</td>
	              <td>리워드</td>
	              <td>12345600</td>
	              <td>실패</td>
	              <td>2018-04-20</td>
	              <td>0</td>
	              <td>7</td>
	              <td>0</td>
	              <td>-</td>
	          </tr>
	          <tr>
	              <td><input type="checkbox"></td>
	              <td>id6</td>
	              <td>투자</td>
	              <td>12345</td>
	              <td>성공</td>
	              <td>2018-04-03</td>
	              <td>80,000,000</td>
	              <td>5</td>
	              <td>4,000,000</td>
	              <td>입금완료</td>
	          </tr>
           </tbody>
        </table>
        
      <div>
        <a class="btn btn-default btn-primary">자세히 보기</a>&nbsp;&nbsp;
        <a class="btn btn-default btn-primary">삭제</a>
      </div>   
      <hr>
      
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