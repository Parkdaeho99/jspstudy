package com.test.jsp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionLoginServlet
 */
@WebServlet("/sessionLogin")
public class SessionLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}

	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("password");
		
		if(id.equals("java") && passwd.equals("java")) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("menu.jsp");
			/*request, response 담은 정보를 forward를 이용해서 넘김*/
			dispatcher.forward(request, response);
		} else {
			out.println("<script>");
			out.println("alert('아이디나 비밀번호가 일치하기 않습니다.')");
			out.println("history.back()");
			out.println("</script>");
			
		}
	}

}
