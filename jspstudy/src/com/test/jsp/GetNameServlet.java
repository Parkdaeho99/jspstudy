package com.test.jsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GetNameServlet
 */
@WebServlet("/getName")
public class GetNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}
	private void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession(); //세션생성
		String name =(String)session.getAttribute("name");
		/*key(name), value*/
		
		PrintWriter out = response.getWriter();
		out.println("저장된 이름은 "+name+"입니다<br/>");
		
		Enumeration<String> enu = session.getAttributeNames();
		
		while(enu.hasMoreElements()) {
			String key = enu.nextElement();
			out.println(key+"<br/>");
		}
	}

}
