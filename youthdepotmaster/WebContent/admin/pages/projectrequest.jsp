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
	  <h2 class="page-header">청춘 프로젝트</h2>
	</div>
  </div>
  
  <div class="row">
	<div class="col-lg-12">
	  <div class="panel panel-default">
		<div class="panel-heading">
			프로젝트 신청 관리
		</div>
        <!-- /.panel-heading -->
        
      <div class="panel-body">
		<table width="100%" class="table table-bordered table-hover" id="dataTables-example">
           <thead>
              <tr>
            	<th><input type="checkbox"></th>
                <th>프로젝트 번호</th>
                <th>프로젝트 제목</th>
                <th>창고지기</th>
                <th>신청일</th>
                <th>진행사항</th>
              </tr>
           </thead>
           <tbody>
              <tr>
                <td><input type="checkbox"></td>
                <td>5</td>
                <td>열정 키트리</td>
                <td class="center">창고지기</td>
                <td class="center">18.05.10</td>
                <td><div class="btn-group">
				  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
	    		  Action <span class="caret"></span>
	  			  </button>
		  		  <ul class="dropdown-menu" role="menu">
			   	   <li><a href="#">승인</a></li>
			   	   <li><a href="#">검토중</a></li>
			       <li class="divider"></li>
			       <li><a href="#">반려</a></li>
			      </ul>
				</div>
				</td>
              </tr>
              <tr>
                <td><input type="checkbox"></td>
                <td>4</td>
                <td>열정 키트리</td>
                <td class="center">창고지기</td>
                <td class="center">18.05.09</td>
                <td><div class="btn-group">
				  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
	    		  Action <span class="caret"></span>
	  			  </button>
		  		  <ul class="dropdown-menu" role="menu">
			   	   <li><a href="#">승인</a></li>
			   	   <li><a href="#">검토중</a></li>
			       <li class="divider"></li>
			       <li><a href="#">반려</a></li>
			      </ul>
				</div>
				</td>
              </tr>
              <tr>
                <td><input type="checkbox"></td>
                <td>3</td>
                <td>열정 키트리</td>
                <td class="center">창고지기</td>
                <td class="center">18.05.08</td>
                <td><div class="btn-group">
				  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
	    		  Action <span class="caret"></span>
	  			  </button>
		  		  <ul class="dropdown-menu" role="menu">
			   	   <li><a href="#">승인</a></li>
			   	   <li><a href="#">검토중</a></li>
			       <li class="divider"></li>
			       <li><a href="#">반려</a></li>
			      </ul>
				</div>
				</td>
              </tr>
              <tr>
                <td><input type="checkbox"></td>
                <td>2</td>
                <td>열정 키트리</td>
                <td class="center">창고지기</td>
                <td class="center">18.05.07</td>
                <td><div class="btn-group">
				  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
	    		  Action <span class="caret"></span>
	  			  </button>
		  		  <ul class="dropdown-menu" role="menu">
			   	   <li><a href="#">승인</a></li>
			   	   <li><a href="#">검토중</a></li>
			       <li class="divider"></li>
			       <li><a href="#">반려</a></li>
			      </ul>
				</div>
				</td>
              </tr>
              <tr>
                <td><input type="checkbox"></td>
                <td>1</td>
                <td>열정 키트리</td>
                <td class="center">창고지기</td>
                <td class="center">18.05.06</td>
                <td><div class="btn-group">
				  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
	    		  Action <span class="caret"></span>
	  			  </button>
		  		  <ul class="dropdown-menu" role="menu">
			   	   <li><a href="#">승인</a></li>
			   	   <li><a href="#">검토중</a></li>
			       <li class="divider"></li>
			       <li><a href="#">반려</a></li>
			      </ul>
				</div>
				</td>
              </tr>
           </tbody>
        </table>
      <hr>
      <div class="btn-center" style="text-align: center">
        <a class="btn btn-default btn-lg btn-outline btn-primary">프로젝트 삭제</a>
        <a class="btn btn-default btn-lg btn-outline btn-primary">게시판 삭제</a>
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