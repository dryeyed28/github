<%@page import="vo.Product"%>
<%@page import="vo.OrderLine"%>
<%@page import="vo.OrderInfo"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<style>
div.infos{
 box-sizing: border-box;
 width:100%;
 height:100%;
 margin:0px;
 overflow: auto;
}
div.info{
  box-sizing: border-box;
  margin:1px;
  padding:1px;
  border-bottom: 1px solid;
  width:100%;
}
div.info_no, div.info_dt,div.lines {
  box-sizing: border-box;
  display:inline-block;  
  margin:5px;
  padding:1px;
  vertical-align: middle;
}
div.info_no{
  width:5%;
}
div.info_dt{
  width:15%;
}
div.lines {
  width:50%; 
} 
div.code, div.name, div.price, div.quantity{
 margin:3px;
 display:inline-block;  
 width:20%;
}
@media scree and (min-width: 640px){
  div.info, div.info_no, div.info_dt,div.lines,
  div.code, div.name, div.price, div.quantity{
    margin:0px;
    padding:0px;
  }
  
}
</style>
<div class="infos">
 <div class="info">
  <div class="info_no">주문번호</div>
  <div class="info_dt">주문일자</div>
  <div class="lines">주문상세내역
   <div class="line">
        <div class="code">상품번호</div>
        <div class="name">상품명</div>
        <div class="price">가격</div>
        <div class="quantity">수량</div>
   </div>	
  </div>
 </div>
<% 
String result = (String)request.getAttribute("result");
if(result != null){
%>   <%=result %>	   
<% return;
}
List<OrderInfo> infos = (List)request.getAttribute("infos");
for(OrderInfo info : infos){
%><div class="info">
    <div class="info_no"><%=info.getInfo_no()%></div><%--주문번호--%>
    <div class="info_dt"><%=info.getInfo_dt() %></div>
    <div class="lines">
    <%for(OrderLine line:info.getLines()){
    	Product p = line.getLine_product();
    	int product_code = p.getProduct_code();
    	String product_name = p.getProduct_name();
    	int price =p.getPrice();
    	int quantity = line.getLine_quantity();
    %><div class="line">
        <div class="code"><%=product_code%></div>
        <div class="name"><%=product_name%></div>
        <div class="price"><%=price%></div>
        <div class="quantity"><%=quantity%></div>
      </div>	
    <%}%>
    </div>
 </div>	
<%}
%>
</div>