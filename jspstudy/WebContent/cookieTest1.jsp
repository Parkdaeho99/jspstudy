<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie cookie = new Cookie("name", "hongkildong");
		cookie.setMaxAge(600); //600초동안 살아있는 쿠키생성
		response.addCookie(cookie); //쿠키 전송
		System.out.println("시작");
		System.out.println("1번페이지"+" : "+cookie.getName());
	%>
	<h2><%=cookie.getName() %></h2>
	<h2><%=cookie.getValue() %></h2>
	<h2><%=cookie.getMaxAge() %></h2>
	<a href="cookieTest2.jsp">쿠키 값 불러오기</a>
	<hr/>
</body>
</html>