<%@page import="vo.Product"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
{    
<% 
Map<Product, Integer>cart = 
   (Map)session.getAttribute("cart");
if(cart == null){
%>"status":-1    	  
<%
}else{%>
  "status":1,
  "items":[
  <%
  int i=0;
  for(Product p: cart.keySet()) {
	int quantity = cart.get(p);
	//System.out.println(p.getProduct_code() +":" + quantity);
  %><%=i==0?"":","%>
   {"code":<%=p.getProduct_code() %>,
     "name":"<%=p.getProduct_name() %>",
     "price":<%=p.getPrice() %>,
     "quantity":<%=quantity %>	
   }
  <%
   i++;
  }//end for  
  %>
  ]	
<%
}//end else  
%>
}