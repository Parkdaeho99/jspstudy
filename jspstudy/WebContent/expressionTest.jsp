<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		public int sum() {
			int total=0;
			for(int i=1; i<=100; i++) {
				total+= i;
			}
			return total;
		}
	%>
	
	<%
		String str="1부터 100까지의 합";
	%>
	<h2><%=str%>은 <b><%=sum()%></b>입니다</h2>
</body>
</html>