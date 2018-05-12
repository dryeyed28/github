<%@page import="vo.Zip"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
public String replace(String str,String newStr) {
	if(str == null) {
		return newStr;
	}else {
		return str;
	}
}
%>
[    
<%
List<Zip> list = (List)request.getAttribute("result");
for(int i=0; i<list.size(); i++) {
 Zip z = list.get(i);
 if(i>0) {
%>,
<%} %>
{"zipcode":"<%=replace(z.getZipcode(),  "") %>",
 "sido":"<%=replace(z.getSido(),  "")%>",
 "sigungu":"<%=replace(z.getSigungu(),  "") %>",
 "eupmyun":"<%=replace(z.getEupmyun(), "") %>",
 "doro":"<%=replace(z.getDoro(),  "")%>"}
<%
}	 
%>
]
<%-- <%
List<Zip> list = (List)request.getAttribute("result");
String result="[";
for(int i=0; i<list.size(); i++) {
 Zip z = list.get(i);
 if(i>0) {
	result +=",";
 }

 result += "{";
 result += "\"zipcode\":\""+replace(z.getZipcode(),  "")+"\"";
 result += ",\"sido\":\""+replace(z.getSido(),  "")+"\"";
 result += ",\"sigungu\":\""+replace(z.getSigungu(),  "")+"\"";
 result += ",\"eupmyun\":\""+replace(z.getEupmyun(), "")+"\"";
 result += ",\"doro\":\""+replace(z.getDoro(),  "")+"\"";
 result += "}";				
}
result += "]";
//out.print(result);
System.out.println(result);
%><%=result%>
 --%>