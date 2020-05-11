package com.test.jsp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class PartUploadPro1Servlet1
 */
@WebServlet("/partUploadProc1")
@MultipartConfig(
		fileSizeThreshold = 0,
		location = "/test"
)

public class PartUploadPro1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PartUploadPro1Servlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}
	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String writer = request.getParameter("writer");
		Part part = request.getPart("partFile1");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String contentDisposition = part.getHeader("content-disposition");
		/* 클라이언트가 선택한 파일의 이름이 저장된 헤더 */
		String uploadFileName = getUploadFileName(contentDisposition);
		/* 클라이언트가 선택한 파일의 이름이 저장된 헤더에서 클라이언트가 선택한 파일의 이름을 가져온다. */
		part.write(uploadFileName);
		/* 위 location에서 지정한 위치에 uploadFileName 이라는 이름으로 파일을 저장한다. */
		out.println("작성자 " + writer + "님이 " + uploadFileName + " 파일을 업로드 하셨습니다.");
	}
	
	/* 크롬인 경우 처리 코드 */
	private String getUploadFileName(String contentDisposition) {
		String uploadFileName = null;
		String[] contentSplitStr = contentDisposition.split(";");
		int firstQutosIndex = contentSplitStr[2].indexOf("\"");
		int lastQutosIndex = contentSplitStr[2].lastIndexOf("\"");
		uploadFileName = contentSplitStr[2].substring(firstQutosIndex + 1, lastQutosIndex);
		return uploadFileName;
	}
}
