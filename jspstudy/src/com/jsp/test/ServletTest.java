package com.jsp.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletTest
 */
@WebServlet("/st")
public class ServletTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet호출");
		doProc(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost호출");
		doProc(request, response);
	}
	
	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doProc호출");
		Car myCar = new Car("현대자동차", "제네시스");
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		Calendar c = Calendar.getInstance();
		int hour = c.get(Calendar.HOUR_OF_DAY);
		int min = c.get(Calendar.MINUTE);
		int sec = c.get(Calendar.SECOND);
		PrintWriter pw = response.getWriter();
		pw.write("<html><head><title>ServletTest</title></head>");
		pw.write("<body><h1>");
		pw.write("현재 시각은");
		pw.write(Integer.toString(hour));
		pw.write("시");
		pw.write(Integer.toString(min));
		pw.write("분");
		pw.write(Integer.toString(sec));
		pw.write("초 입니다.");
		pw.write("</h1>");
		pw.write("<h2>");
		pw.write("당신의 자동차는 "+myCar.getCompany()+" 제품이고, 모델명은 "+myCar.getModel()+"입니다.");
		pw.write("</h2>");
		pw.write("</body></html>");
		pw.close();
	}
}
