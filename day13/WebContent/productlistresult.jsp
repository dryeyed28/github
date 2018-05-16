<%@page import="java.text.DecimalFormat"%>
<%@page import="vo.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<link rel="stylesheet" href="css/productlist.css">    
<%--productlistresult.jsp--%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function(){
	var $targetObj;				
	if($("section").length> 0){
		$targetObj = $("body>section");
	}else{
		$targetObj = $("body");
	}
	$targetObj.one("click",
			"div.item>div.choicecart button.viewcart",
			function(){
		$targetObj.empty();				
		var $triggerObj = $("nav>ul li.viewcart");
		if($triggerObj.length>0){
			$triggerObj.trigger('click');
		}else{
			$.ajax({
				url:'viewcart.do',
				success:function(data){
					console.log("at button: viewcart.do요청");
				}
			});
		}
		return false;
	});
	$targetObj.one("click",
			"div.item>div.choicecart button.productlist",
			function(){
		$targetObj.empty();					
		var $triggerObj = $("nav>ul li.product_list");
		if($triggerObj.length>0){
			$triggerObj.trigger('click');
		} 
		return false;
	});
	$targetObj.one("click","div.item>div.info>ul>li>button", function(){
		//$targetObj.empty();
		console.log("addcart버튼 click");
		$.ajax({
			url: "addcart.do",
			method: "post",
			data:{code: $("div.item>div.info span.code").html().trim(),
				  quantity: $("div.item>div.info input[name=quantity]").val()
				},
			success:function(data){
				data = data.trim();
				if(data == '1'){ //장바구니 넣기 성공
				  $('div.choicecart').show();
				}else{
				  alert("장바구니 넣기 실패");
				}
			}
	   });
	   return false;
	});
	//
	//div.list의 자식객체인div.item객체에서 클릭이벤트핸들러작성	
	$("div.list>div.item").click(function(){
		console.log("item click!");
		$targetObj.empty();
		$.ajax({
			url:"productdetail.do",
			data:"no="+ $(this).find("li.no").html().trim(),
			success:function(data){
				var jsonObj = JSON.parse(data);
				console.log(jsonObj.code+":" + jsonObj.name+":"+ jsonObj.price);				
				var $itemDivObj = $('<div class="item"></div>');
				var $imgDivObj = $('<div class="img"></div>');
				$imgDivObj.append($('<img src="images/'+jsonObj.code+'.jpg">'));
				$itemDivObj.append($imgDivObj);
				
				var $infoDivObj = $('<div class="info"></div>');				
				var $ulObj = $('<ul></ul>');				
				$ulObj.append('<li>상품번호:<span class="code">'+jsonObj.code+'</span></li>');
				$ulObj.append('<li>상품명:<span class="name">'+jsonObj.name+'</span></li>');
				$ulObj.append('<li>가격:<span class="price">'+jsonObj.price+'</span></li>');
				$ulObj.append('<li>카테고리:</span><span class="category">'+jsonObj.category+'</span></li>');
				$ulObj.append('<li>수량:<input type="number" name="quantity" value="1"></li>');
				$ulObj.append('<li><button>장바구니넣기</button></li>');
				
				$infoDivObj.append($ulObj);				
				$itemDivObj.append($infoDivObj);		
				$itemDivObj.append('<div class="choicecart"><button class="viewcart">장바구니보기</button><button class="productlist">계속</button></div>');	
				
				$targetObj.append('<link rel="stylesheet" href="css/productdetail.css">');
				$targetObj.append($itemDivObj);
			}
		});
		return false;
	});	
});
</script>
<%--search.jsp를 동적포함하기 --%>
<div class="search">
<jsp:include page="search.jsp"></jsp:include>
</div>
<c:set var="result" value="${requestScope.result}"/>
<c:choose>
   <c:when test="${!empty result}">${result}</c:when>
   <c:otherwise>
      <c:set var="list" value="${requestScope.list}"/>
      <div class="list">
       <c:forEach var="product" items="${list}">
        <c:set var="code" value="${product.product_code}"/>
        <div class="item">
          <div class="img">
            <img src="images/${code}.jpg">
          </div> 
          <div class="info">
           <ul>
            <li class="no">${code}</li>
            <li class="name">${product.product_name}</li>
            <li class="price">&#65510;
                  <fmt:formatNumber 
                                   pattern="#,##0" 
                                   value="${product.price}"/>
            </li>
           </ul>
          </div> 
        </div>          
       </c:forEach>
      </div>
   </c:otherwise>
</c:choose>

