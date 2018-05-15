<%@page import="vo.Product"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--viewcartresult.jsp --%>  
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cart" value="${sessionScope.cart}"/>  
{ 
<c:choose>
  <c:when test="${empty cart}">"status":-1</c:when>
  <c:otherwise>
  "status":1,
  "items":[
    <c:forEach items="${cart}" var="item" varStatus="status">
      <c:set var="p" value="${item.key}"/>
      <c:set var="quantity" value="${item.value}"/>
      <c:if test="${status.index!=0}">,</c:if>
      {"code":${p.product_code},
       "name":"${p.getProduct_name()}",
       "price":${p.getPrice()},
       "quantity":${quantity}	
      }
    </c:forEach>
  ]
  </c:otherwise>
</c:choose>   
}