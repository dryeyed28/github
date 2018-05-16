<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--session.jsp--%>
SESSION ID : <%=session.getId()%><br>
SESSION IS NEW : <%=session.isNew()%><br>
<% SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");   
%>
SESSION create time : 
<%=sdf.format( new Date(session.getCreationTime() )) %><br>
<%
//session.setAttribute("sn", "sv55");
session.setAttribute("sn", session.getId());
%>
<a href="session1.jsp">session1.jsp</a>