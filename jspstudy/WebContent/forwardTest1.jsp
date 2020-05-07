<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8"); 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page='<%=request.getParameter("ft") %>'>
		<jsp:param value="010-9999-8888" name="tel"/>
	</jsp:forward>
		<!-- request에 파라미터 추가하기 (액션태그로) 아마 request.setAttribute랑 같은듯?ㄴㄴ -->
		<!-- 파라미터는 request에만 저장이 가능하고, 애트리뷰트는 session, context 등에도 저장이 가능 
			 파라미터는 String만 전달가능, 애트리뷰트는 다양하게 가능
			 암튼 애트리뷰트가 더 유연함 https://wrkbr.tistory.com/53 -->
</body>
</html>