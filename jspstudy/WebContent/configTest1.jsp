<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println(config.getServletName()+"<hr/>");
		Enumeration<String> enu = config.getInitParameterNames();
		while(enu.hasMoreElements()) {
			String name = enu.nextElement();
			out.println(name+" : "+config.getInitParameter(name)+"<hr/>");
		}
	%>
	<%
		config.getInitParameter("fileDir");
	%>
</body>
</html>