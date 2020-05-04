package com.test.jsp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login.do") //html에서 넘긴 데이터를 처리하는 페이지, input action="url" 부분에 넣어야함
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}
	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); /*포스트 방식에 대한 한글처리*/
		response.setContentType("text/html; charset=UTF-8"); /*겟 방식에 대한 한글처리*/
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		PrintWriter out = response.getWriter();
		/*서블릿 페이지에서 html 페이지에 write하는 과정*/
		out.println("아이디="+id + "<br />");
		out.println("비밀번호=" + passwd + "<br />");
		out.close();
		System.out.println(id);
		System.out.println(passwd);
		
	}

}
