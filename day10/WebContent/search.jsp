<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--search.jsp --%>
<% request.setCharacterEncoding("UTF-8"); %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function(){
<% String value = request.getParameter("searchValue");
   if(value != null){
	   //input객체의 value에 대입
%>   $("input[name=searchValue]").val("<%=value%>"); 
<% }
   String item = request.getParameter("searchItem");
   if(item != null){
%>   $("select").val("<%=item%>");	   
<% }
%> 
   $("input[name=searchValue]").keypress(function(e){
	if(e.which == 13){ //enter	
	  $('form>button').trigger('click');
	}
   }); 
   
   $("form").submit(function(){
	   $.ajax({
		   method:"post",
		   data:$("form").serialize(),
		   url:"productlist.do",
		   success:function(data){
			   if($("section").length > 0){
			     $("section").empty();
			     $("section").html(data.trim());
			   }else{
			     $("body").html(data.trim());
			   }
		   }
	   });
	   return false;
   });
   
});
</script>

<form method="post">
<select name="searchItem">
  <option value="no">번호로 검색</option>
  <option value="name">이름으로 검색</option>
</select>
<input type="search" name="searchValue" 
                     placeholder="상품을 입력하세요">
<button>검색</button>
</form>                     