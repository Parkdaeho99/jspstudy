<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.net.URL.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	메이저버전:<%=application.getMajorVersion() %><hr/>
	마이너버전:<%=application.getMinorVersion() %><hr/>
	서블릿정보:<%=application.getServerInfo() %><hr/>
	<%
		String path = application.getRealPath("/");
	%>
	real Path: <%=path %><hr/>
	URL 정보: <%=application.getResource("/") %>
	파일정보: <%=application.getMimeType("C:/tomcat-9/BUILDING.txt") %>
</body>
</html>