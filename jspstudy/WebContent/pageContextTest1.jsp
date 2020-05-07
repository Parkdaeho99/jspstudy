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
		request.setAttribute("data", "데이터");
		pageContext.setAttribute("page", "페이지컨텍스트");
		/*pageContext는 다른 페이지로 넘어가지 않는다.(스코프가 자신의 페이지까지만 유효)*/
		pageContext.forward("pageContextTest2.jsp");
		
		/*pageContext에 저장된건 다른 페이지로 넘어가질 않는다.
		그럼에도 불구하고 pageContext 내부의 forward를 사용해서 request를 넘기는 이유는? 
		보통 request.forward 같은게 있을법도 한데?
		pageContextTest2.jsp에 있는 pageContext.include()도 마찬가지로 의문*/
	%>
</body>
</html>