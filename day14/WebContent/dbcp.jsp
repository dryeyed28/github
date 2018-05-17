<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>dbcp.jsp</title>
</head>
<body>
<%
Context initContext = new InitialContext();
/* Context envContext  = (Context)initContext.lookup("java:/comp/env");
DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle"); */
DataSource ds = (DataSource)initContext.lookup("java:/comp/env/jdbc/myoracle");
Connection conn = ds.getConnection();
out.print("conn을 구현한 객체의 이름은 : " + ds.getClass().getName());
%><br><%
out.print("conn의 메소드 목록  : "+ ds.getClass().getMethods());
%><br>
<%
%>
<%=conn %>
</body>
</html>