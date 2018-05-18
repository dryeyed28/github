<%@ tag body-content="empty" pageEncoding="UTF-8"%>
<%@attribute name="code" required="true"%>
<%
if("ko".equals(code)){
	out.print("안녕하세요");
}else if("en".equals(code)) {
	out.print("Hello");
}else if("fr".equals(code)) {
	out.print("BONJOUR");
}
%>
<%--<%=code--%>
<%-- ${code}--%>
