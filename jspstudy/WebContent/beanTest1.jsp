<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.test.jsp.dto.BeanTest"%>
<jsp:useBean id="mybean" class="com.test.jsp.dto.BeanTest" scope="page"></jsp:useBean>
<!-- mybean 객체 생성, 클래스는 BeanTest / scope 종류 : page / request / application / session -->
<jsp:useBean id="yourbean" class="com.test.jsp.dto.BeanTest" scope="page"></jsp:useBean>
<%
	BeanTest yourBean = new com.test.jsp.dto.BeanTest();
%>
<!-- scope="page" => 페이지까지 유효하다? -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:setProperty property="name" name="mybean" value="홍길동"/>
	<%
		out.println(mybean.getName());
	%>
	<hr/>
	<% 
		yourbean.setName("김영희");
	%>
	<jsp:getProperty property="name" name="yourbean"/>
</body>
</html>