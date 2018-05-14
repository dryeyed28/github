<%@page import="vo.PageBean"%>
<%@page import="vo.RepBoard"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%PageBean pb = (PageBean)request.getAttribute("pagebean"); %>    
<style>
div.list{
 box-sizing: border-box;
 width:100%;
 height:100%;
 margin:0px;
 overflow: auto;
}
div.board{
  box-sizing: border-box;
  margin:1px;
  padding:0px;
  border-bottom: 1px solid;
  display:table-row;
  width:100%;
}

div.board_seq, div.parent_seq,div.board_subject, div.board_writer, div.board_date, div.board_viewcount{
 box-sizing: border-box;
  margin:0px;
  padding:0px;
  /* display:inline-block;  */ 
  display:table-cell; 
  width:20%;
  border:1px dotted;
  
}
div.board_seq, div.parent_seq{
  width:10%;
  border-bottom:1px dotted;
}

.pagination {
    display: inline-block;
}

.pagination a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;    
}
.pagination a.active {
    background-color: #4CAF50;
    color: white;
    border-radius: 5px;
}
.pagination a:hover:not(.active) {
    background-color: #ddd;
    border-radius: 5px;
}
</style>   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function(){
	$('.pagination a').click(function(){
		var page;
		if($(this).text() == '«'){
			page=<%=pb.getStartPage()%>-1;
		}else if($(this).text() == '»'){
			page=<%=pb.getEndPage()%>+1;
		}else{
			page = $(this).text();
		}
		 $.ajax({
			url:"repboardlist.do",
			method:'get',
			data:'page='+page,
			success:function(data){
				$('section').empty();
				$('section').html(data.trim());
			}
		}); 
		return false;
	});
	$('.pagination a').each(function(index, element){
		if($(element).text() == '<%=pb.getCurrentPage()%>'){
			$(element).addClass('active');
		}
	});    

	$("button#btwrite").click(function(){
		$.ajax({
			url: 'boardwrite.html',
			success:function(data){
				$('section').empty();
				$('section').html(data.trim());
			}
		});
		return false;
	});
});
</script>
<button id="btwrite">글쓰기</button>
<div class="list">    
<div class="board">
  <div class="board_seq">글번호</div>
  <!-- <div class="parent_seq">부모글번호</div> -->
  <div class="board_subject">제목</div>
  <div class="board_writer">작성자</div>
  <div class="board_date">작성일자</div>
  <div class="board_viewcount">조회수</div>
</div>
<% 
  //PageBean pb = (PageBean)request.getAttribute("pagebean");
  //List<RepBoard>list = (List)request.getAttribute("boardlist");
  List<RepBoard>list = pb.getList();
  for(RepBoard b:list){	  
%><div class="board">
    <div class="board_seq">
    <%for(int i=1; i<b.getLevel(); i++){
    %>	<%="▷"%>
    <%}%><%=b.getBoard_seq()%>
    </div>
    <%-- <div class="parent_seq"><%=b.getParent_seq()%></div> --%>
    <div class="board_subject"><%=b.getBoard_subject()%></div>
    <div class="board_writer"><%=b.getBoard_writer()%></div>
    <div class="board_date"><%=b.getBoard_date()%></div>
    <div class="board_viewcount"><%=b.getBoard_viewcount()%></div>
  </div>  
<%	  
  }
%><div class="pagination">  
<%int startPage = pb.getStartPage();
  int endPage = pb.getEndPage();
  if(startPage > 1){%>
	  <a href="#">&laquo;</a>  
<%}  
  for(int i=startPage; i<=endPage; i++){  
%><a href="#"><%=i%></a>	  
<%}  
  System.out.println(pb);
  
  if(endPage < pb.getTotalPage()){%>
	<a href="#">&raquo;</a>  
<%}
%></div>
</div> 