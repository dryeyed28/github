<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String result = (String)request.getAttribute("result"); %>
<%
	String forwardURL = "boardwrite.html";
	RequestDispatcher rd = request.getRequestDispatcher(forwardURL);
	rd.forward(request, response);
%>

