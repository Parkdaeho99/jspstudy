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
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie ck : cookies) {
				out.println(ck.toString()+"<br/>");
			}
		}
		out.println("<hr/>");
		out.println("서버의 도메인명 : "+ request.getServerName()+"<br/>");
		out.println("서버의 포트번호 : "+ request.getServerPort()+"<br/>");
		out.println("요청URL : "+ request.getRequestURL()+"<br/>");
		
		out.println("클라이언트IP : "+ request.getRemoteAddr()+"<br/>");
		out.println("ContextPath : "+ request.getContextPath()+"<br/>");
	%>
</body>
</html>