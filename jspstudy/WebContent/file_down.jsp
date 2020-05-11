<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.File" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String fileName = request.getParameter("file_name");
	/*fileCheck.jsp에서 <a>를 통해 보낸 파라미터를 받아온다*/
	String savePath = "test";
	/*저장경로*/
	ServletContext context = getServletContext();
	/*서블릿 컨텍스트를 하나 만들고*/
	String sDownloadPath = context.getRealPath(savePath);
	/*컨텍스트에 ~~~~해서 서버 상의 실제 물리적인 경로를 얻어온다. */
	String sFilePath = sDownloadPath + "\\" + fileName;
	/*다운로드할 파일의 전체경로를 지정하는 부분*/
	System.out.println(sDownloadPath);
	/*C:\eclipse-workspace\jee\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\jspstudy\test*/
	System.out.println(sFilePath);
	/*C:\eclipse-workspace\jee\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\jspstudy\test\banner24.jpg*/
	byte b[] = new byte[4096];
	FileInputStream in = new FileInputStream(sFilePath);
	String sMimeType = getServletContext().getMimeType(sFilePath);
	/*다운로드할 파일의 마임타입을 얻어오는 부분이다*/
	System.out.println("sMimeType>>>"+sMimeType);
	
	if(sMimeType == null)
		sMimeType = "application/octet-stream";
	/*다운로드할 파일의 마임타입이 제대로 반환되지 않으면 기본 마임 타입을 지정하는 부분이다.*/
	response.setContentType(sMimeType);
	/*응답할 데이터의 마임타입을 다운로드할 파일의 마임타입으로 지정하는 부분이다.*/
	String agent = request.getHeader("User-Agent");
	boolean ieBrowser = (agent.indexOf("MSIE") > -1) || (agent.indexOf("Trident") > -1);
	/*클라이언트가 사용하는 브라우저의 종류가 익스플로러인지 판단하는 부분이다.*/
	if(ieBrowser) {
		fileName = URLEncoder.encode(fileName, "UTF-8").replaceAll("\\+", "%20");
	} else {
		fileName = new String(fileName.getBytes("UTF-8"), "iso-8859-1");
	}
	
	response.setHeader("Content-Disposition", "attachment; filename= "+fileName);
	/*브라우저에서 해석되늖 ㅘㄱ장자의 파일도 다운로드 박스가 실행되게 처리하는 부분이다. 헤더 정보 설정 시 Content-Disposition 값을 attachment로 설정하면 모든 파일에 대해서 다운로드 박스가 실행된다.*/
	ServletOutputStream out2 = response.getOutputStream();
	/*파일 다운로드 역할을 하는 바이트 기반 출력 스트림 객체를 생성하는 부분이다. JSP 자체에서 out이라는 문자 기반 출력스틀미이 존재하므로 출력 스트림 객체명을 out2로 지정하엿다.*/
	int numRead;
	
	while ((numRead = in.read(b,0,b.length)) != -1) {
		out2.write(b,0,numRead);
	}
	/*b 바이트 배열 객체 단위로 다운로드할 파일 정보를 읽어서 응답에 출력하여 다운로드 처리하는 부분이다.*/
	
	out2.flush();
	/*위에서 write한 파일 스트림을 flush한다 = 스트림이 비워지면서 전송된다?*/
	out2.close();
	in.close();
%>
<!-- 멀티파트리퀘스트4를 이용한 파일전송 -->
</body>
</html>