<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--include.jsp --%>
정적포함<br>
<%@include file="first.jsp"%>
<hr>
동적포함<br>
<jsp:include page="first.jsp"></jsp:include>