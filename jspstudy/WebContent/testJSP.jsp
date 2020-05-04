<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//자바 영역
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR);
		int month = c.get(Calendar.MONTH)+1;
		int day = c.get(Calendar.DAY_OF_MONTH);
	%>
	
	<h3>오늘 날짜는 <%out.print(year);%>-<%out.print(month);%>-<%out.print(day);%>입니다.</h3>
	<br/>
	<h3>오늘 날짜는 <%=year%>-<%=month%>-<%=day%>입니다.</h3>
</body>
</html>