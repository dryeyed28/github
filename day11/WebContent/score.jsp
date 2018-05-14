<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--score.jsp --%>
<%
String score = request.getParameter("score");
if(score == null){
	response.sendRedirect("score.html");
	return;
}
//out.print(score+"점을 선택하셨습니다<br>");
%><%=score%>점을 선택하셨습니다<br>
<%! int totalCnt=0; %>
<% totalCnt++; %>
총 참여인원 : <%= totalCnt %>명<br>









