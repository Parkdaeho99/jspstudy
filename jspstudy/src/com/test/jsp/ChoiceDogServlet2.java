package com.test.jsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/choiceDogServlet2.do")
public class ChoiceDogServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ChoiceDogServlet2() {
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
		PrintWriter out = response.getWriter();
		Enumeration<String> enu = request.getParameterNames();
		while(enu.hasMoreElements()) {
			String name = enu.nextElement();
			String[] arr = request.getParameterValues(name);
			out.println("<html>");
			out.println("<head>");
			out.println("<meta charset='UTF-8' />");
			out.println("<title> 강아지 사진</title>");
			out.println("</head>");
			out.println("<body>");
			for(String value:arr) {
				if(name.equals("dog")) {
					out.println("<img src="+"'"+value+"'"+" width='200'"+"/>");
				} else {
					out.println("키: " + name + " , 값: " + value + "</h3><br/>");
				}
			}
			out.println("</body>");
			out.println("</html>");
		}
//		String hide = request.getParameter("hide");
//		out.println(hide);
//		
//		String dogs[] = request.getParameterValues("dog");
//		out.println("<html>");
//		out.println("<head>");
//		out.println("<meta charset='UTF-8' />");
//		out.println("<title> 강아지 사진</title>");
//		out.println("</head>");
//		out.println("<body>");
//
//		if(dogs.length != 0) { 
//			for(int i=0; i<dogs.length; i++) {
//				out.println("<img src="+"'"+dogs[i]+"'"+" width='200'"+"/>");
//				// <img src='imgs/flower1.jpg'/>
//			}
//		}
//		out.println("</body>");
//		out.println("</html>");
//			
//		System.out.println(hide);
	}

}
