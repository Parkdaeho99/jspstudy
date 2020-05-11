<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*, java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String uploadPath = request.getServletContext().getRealPath("/test");
	System.out.println(uploadPath);
	
	int size = 10*1024*1024;
	String name = "";
	String subject = "";
	String filename1 = "";
	String filename2 = "";
	String origfilename1 = "";
	String origfilename2 = "";
	
	try {
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "UTF-8", new DefaultFileRenamePolicy());
		/*파일 업로드를 담당하는 MultipartRequest 클래스, 객체 생성과 동시에 파일 업로드*/
		name = multi.getParameter("name");
		/* 파라미터를 가져오는 것일 뿐이라서 request.getParameter 사용해도 가능한듯?
				아니면 업로드 된 파일의 파라미터를 가져오는 거라서 엄밀히 따지면 다른가?
				아니면 request가 MultipartRequest의 파라미터로 들어갔으니, multi를 쓰면 request에 있는걸 자동으로 가져올 수 있는듯?*/
		subject = multi.getParameter("subject");
	
		Enumeration files = multi.getFileNames();
		/* 한번에 업로드하는 파일이 두개라서 getFileNames 사용해서 Enumeration으로 받음 */
		String file1 = (String)files.nextElement();
		/* 첫번째 파라미터를 Enumeration -> String 변경 후 저장 */
		filename1 = multi.getFilesystemName(file1);
		/* 클라이언트가 업로드한 파일이 실제 서버에서 어떤 이름으로 저장됐는지 가져온다?
				실제 서버에 저장된 파일명? */
		origfilename1 = multi.getOriginalFileName(file1);
		/* 클라이언트가 업로드한 파일의 이름 */
		System.out.println(file1);
		System.out.println(filename1);
		System.out.println(origfilename1);
		/*왜 나중에 들어간 2번 파일이 먼저 잡히지?*/
		
		
		String file2 = (String)files.nextElement();
		filename2 = multi.getFilesystemName(file2);
		origfilename2 = multi.getOriginalFileName(file2);
		System.out.println(file2);
		System.out.println(filename2);
		System.out.println(origfilename2);
	} catch(Exception e) {
		e.printStackTrace();
	}
	
%>
	<form name="filecheck" action="fileCheck.jsp" method="post">
		<input type="hidden" name="name" value="<%=name %>">
		<input type="hidden" name="subject" value="<%=subject %>">
		<input type="hidden" name="filename1" value="<%=filename1 %>">
		<input type="hidden" name="filename2" value="<%=filename2 %>">
		<input type="hidden" name="origfilename1" value="<%=origfilename1 %>">
		<input type="hidden" name="origfilename2" value="<%=origfilename2 %>">
	</form>
	<a href="#" onclick="javascript:filecheck.submit()">업로드 확인 및 다운로드 페이지 이동</a>
</body>
</html>