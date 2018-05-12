<%@page import="java.text.DecimalFormat"%>
<%@page import="vo.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Product p = (Product)request.getAttribute("p");
DecimalFormat df =  new DecimalFormat("\uFFE6#,##0");
%>
{"code":<%=p.getProduct_code()%>,
 "name":"<%=p.getProduct_name()%>",
 "price":"<%=df.format(p.getPrice())%>",
 "category":"<%=p.getPcategory().getPc_name()%>"
}