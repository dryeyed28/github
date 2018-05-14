<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl.jsp</title>
</head>
<body>
<c:set var="a"  value="${param.a}"/>
<c:set var="b"  value="1"/>

<c:if test="${empty a}">
  요청전달데이터 a의 값이 없습니다.
</c:if>
<hr>
<c:choose>
  <c:when test="${a == 'hello'}">
    영어
  </c:when>
  <c:when test="${a == 'bonjour'}">
    프랑스어
  </c:when>
  <c:otherwise>
    기본언어
  </c:otherwise>
</c:choose>
<hr>
<c:forEach begin="0"  end="10" var="i" step="2"
           varStatus="status">
    [${status.index}] --${status.count} :${i}<br>
</c:forEach>

<%--  <% List<Integer> list = new ArrayList<>(); 
    list.add(1);  list.add(2); list.add(3); 
    request.setAttribute("list", list);
 %> --%>

<hr>
<c:forEach items="${requestScope.list}" var="i" 
           varStatus="status">
  [${status.index}] --${status.count} :  ${i}<br>
</c:forEach> 
<hr>
before remove : ${a},
<c:remove var="a"/>
after remove : ${a}
<hr>
<c:set var="a" value="a1"/> 
<% //String a="a1"; (X)
   //pageContext.setAttribute("a", "a1"); (O)
%>
<c:set var="a" value="a2"/>
last : ${a}
<hr>
<c:set var="num" value="6789123.4567"/>
&#65510;<fmt:formatNumber pattern="#,###.00" value="${num}"/><br>
<fmt:formatNumber type="currency" currencyCode="KRW" 
                  value="6789123.4567"/><br>
<% request.setAttribute("n", new Date()); %>                  
<fmt:formatDate pattern="yy-MM-dd hh:mm:ss"  
                value="${requestScope.n}"/><br> 
<hr>
<fmt:parseNumber value="6,789,123.46" 
                 pattern="#,###.00" 
                 var="num"/>              
${num}<br>
<fmt:parseDate value="18-05-14 11:25:59"
               pattern="yy-MM-dd hh:mm:ss"
               var="n"/>
${n}                                


<%--request.setCharacterEncoding("UTF-8"); --%>
<fmt:requestEncoding value="UTF-8"/>
</body>

</html>