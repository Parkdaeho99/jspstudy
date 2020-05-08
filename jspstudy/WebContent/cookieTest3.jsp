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
		if(cookie != null) {
			Cookie cookies[] = request.getCookies();
			System.out.println("3번페이지"+" : "+cookies[0].getName());
			for(int i=0; i<cookies.length; i++) {
				if(cookies[i].getName().equals("name")) {
					name = cookies[i].getName();
					value = cookies[i].getValue();
				}
			}			
		} else {
			name = "쿠키가 없습니다.";
			value = "쿠키가 없습니다.";
		}
	%>
	<h2>쿠키 이름 = <%=name %></h2>
	<h2>쿠키 값 = <%=value %></h2>

</body>
</html>