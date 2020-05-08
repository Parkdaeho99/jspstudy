<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="com.test.jsp.dto.JoinBean"/>
<jsp:setProperty property="*" name="user" />
<!-- 자바빈의 필드명과 폼태그의 네임속성값이 모두 동일하면 *로 모두 저장할수있다. -->
<!-- 만약 property의 이름이랑 넘어오는 파라미터의 이름이 다를 경우는 아래처럼 param을 사용한다 -->
<jsp:setProperty property="id" name="user" param="id2"/>
<jsp:setProperty property="pass" name="user" param="pass2"/>
<jsp:setProperty property="name" name="user" param="name2"/>
<jsp:setProperty property="sex" name="user" param="sex2"/>
<jsp:setProperty property="age" name="user" param="age2"/>
<jsp:setProperty property="email" name="user" param="email2"/>
<!-- 햇갈릴수있는 부분 : value는 프로그래머가 지정해주는 값임 아래처럼. 
만약 파라미터랑 value가 같이 지정돼있으면 프로그래머가 지정해준 value가 적용된다. -->
<jsp:setProperty property="email" name="user" value="yt1234"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:getProperty property="id" name="user"/><hr/>
	<jsp:getProperty property="pass" name="user"/><hr/>
	<jsp:getProperty property="name" name="user"/><hr/>
	<jsp:getProperty property="sex" name="user"/><hr/>
	<jsp:getProperty property="age" name="user"/><hr/>
	<jsp:getProperty property="email" name="user"/><hr/>
<!-- 	property는 자바클래스 속성 6개(변수들), name은 객체명  -->
</body>
</html>