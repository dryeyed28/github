<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--cookie.jsp--%>
<%
String n = request.getParameter("cn");
String v = request.getParameter("cv");
if(n != null && v != null){
	Cookie c = new Cookie(n, v); //쿠키생성
	c.setMaxAge(60); //쿠키유효기간. 안하면 현재사용중인 WB에 쿠키가 저장된다
	                 //            WB가 종료되면 쿠키가 사라진다
	                 //            설정하면 파일로 쿠키가 저장된다
	                 //            WB가 종료되어도 기간안에서는 사용할 수 있다
	response.addCookie(c);//쿠키를 응답헤더에 추가
}
%>
<a href="cookie.jsp">쿠키확인</a>
<hr>
<%
//요청헤더에 쿠키정보얻기
Cookie[] cArr = request.getCookies();
if(cArr != null){
	for(Cookie c: cArr){
		String cn = c.getName();
		String cv = c.getValue();
%>	<%=cn %>: <%=cv %><br>	
<%	}
}
%>
<hr>
<form action="cookie.jsp">
  <input name="cn" placeholder="쿠키이름"><br>
  <input name="cv" placeholder="쿠키값"><br>  
  <button>쿠키 추가</button>
</form>


