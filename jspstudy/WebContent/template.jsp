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
<style>
	table {
		margin: auto;
		width: 960px;
		color: gray;
		border: 1px solid gray;
	}
</style>
</head>
<body>
	<%
		String pagefile=request.getParameter("page");
		if(pagefile==null) { pagefile="temp-newitem"; }
	%>
	<table>
		<tr>
			<td height="43" colspan=3 align=left>
				<jsp:include page="temp-top.jsp"/>
			</td>
		</tr>
		<tr>
			<td width="15%" align=right valign=top><br>
				dsa<jsp:include page="temp-left.jsp"/>asd
			</td>
			<td colspan=2 align=center>
				<jsp:include page='<%=pagefile+".jsp" %>'/>
			</td>
		</tr>
		<tr>
			<td width="100%" height="40" colspan="3">
				<jsp:include page="temp-bottom.jsp"/>
			</td>
		</tr>
	</table>
</body>
</html>