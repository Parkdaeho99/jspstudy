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
@WebServlet("/partUploadProc2")
@MultipartConfig(
		fileSizeThreshold = 0,
		location = "/test"
)

public class PartUploadPro1Servlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PartUploadPro1Servlet2() {
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
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String writer = request.getParameter("writer");
		
		String uploadFileNameList = "";
		for(Part part: request.getParts()) {
			if(!part.getName().equals("writer")) {
				String contentDisposition = part.getHeader("content-disposition");
				String uploadFileName = getUploadFileName(contentDisposition);
				part.write(uploadFileName);
				uploadFileNameList += "" + uploadFileName;
			}
		}
		out.println("작성자 " + writer + "님이 " + uploadFileNameList + " 파일을 업로드 하셨습니다.");
	}
	
	private String getUploadFileName(String contentDisposition) {
		String uploadFileName = null;
		String[] contentSplitStr = contentDisposition.split(";");
		int firstQutosIndex = contentSplitStr[2].indexOf("\"");
		int lastQutosIndex = contentSplitStr[2].lastIndexOf("\"");
		uploadFileName = contentSplitStr[2].substring(firstQutosIndex + 1, lastQutosIndex);
		return uploadFileName;
	}
}
