<%@page import="java.text.DecimalFormat"%>
<%@page import="vo.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--productdetailresult.jsp --%>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="p" value="${requestScope.p}"/>
{"code": ${p.product_code},
"name": "${p.product_name}",
"price": "&#65510;<fmt:formatNumber pattern="#,##0" 
            value="${p.price}"/>",
"category":"${p.pcategory.pc_name}"
}