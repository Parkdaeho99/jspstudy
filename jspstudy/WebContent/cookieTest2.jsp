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
		String name="";
		String value="";
		String cookie = request.getHeader("Cookie");
		/*쿠키가 생성되었는지는 헤더에 나와있다.*/
		
		Cookie cookies[] = request.getCookies();
		if(cookie != null) {
			
			for(int i=0; i<cookies.length; i++) {
				if(cookies[i].getName().equals("name")) {
					name = cookies[i].getName();
					value = cookies[i].getValue();
				}
			}
		}
	%>
	<h2>쿠키 이름 = <%=name %></h2>
	<h2>쿠키 값 = <%=value %></h2>
	<%
		cookies[0].setMaxAge(0); //쿠키는 remove함수가 없어서 삭제하려면 생존시간을 0으로 해줌
		System.out.println("2번페이지"+" : "+cookies[0].getName());

	%>
	<a href="cookieTest3.jsp">쿠키 삭제</a>

</body>
</html>