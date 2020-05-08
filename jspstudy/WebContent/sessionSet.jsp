<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
	<%
		session.setAttribute("name", "Session Test!");
		List<String> list = new ArrayList<String>();
		list.add("수박"); 
		list.add("참외"); 
		list.add("메론"); 
		list.add("딸기"); 
		list.add("사과");
		session.setAttribute("list", list);
	%>
	<script>
		location.href="sessionTest.jsp";
	</script>