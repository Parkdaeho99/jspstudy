package com.test.jsp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SetNameServlet
 */
@WebServlet("/setName")
public class SetNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SetNameServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}
	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(20);
		session.setAttribute("name", "박대호");
		session.setAttribute("age", "40");
		/*key(name), value*/
		PrintWriter out = response.getWriter();
		out.println("<h1>이름저장</h1>");
		out.println("<br/><a href='getName'>저장된 이름보기</a>");
	}

}
