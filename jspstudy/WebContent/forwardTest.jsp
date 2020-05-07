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
	<h2>포워드 테스트</h2>
	<form action="forwardTest1.jsp" method="POST">
	<div>
		<label>이름 : </label><input type="text" name="name"/>
	</div>
	<div>
		<label>나이 : </label><input type="number" name="age"/>
	</div>
	<div>
		<label>주소 : </label><input type="text" name="addr"/>
	</div>
	<input type="hidden" name= "ft" value="forwardTest2.jsp">
	<button type="submit">데이터전송</button>
	</form>
</body>
</html>