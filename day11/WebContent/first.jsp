<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>first.jsp</title>
</head>
<body>
<h1>첫번째 "JSP"입니다.</h1>
<%out.print("요청전달데이터 test의 값은" +
          request.getParameter("test"));
%>
<%int i=10; %>
<% out.print( i );  %>
<%= i %>
</body>
</html>