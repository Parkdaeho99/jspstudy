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
	pageContext.setAttribute("pageScope", "pageValue");
	request.setAttribute("requestScope", "requestValue");
	%>
	
	pageValue = <%=pageContext.getAttribute("pageScope") %><br>
	pageValue = <%=pageContext.getAttribute("requestScope") %><br>
	requestValue = <%=request.getAttribute("requestScope") %><br>
	requestValue = <%=request.getAttribute("pageScope") %>
	
	<jsp:forward page="attributeTest5.jsp"></jsp:forward>
	
</body>
</html>