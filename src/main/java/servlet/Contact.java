package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class contact
 */
@WebServlet("/servlet/contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		try {
			String name = request.getParameter("name");
			String company = request.getParameter("company");
			String mail = request.getParameter("mail");
			String contact = request.getParameter("contact");
			String[] mailmg = request.getParameterValues("mailmg");
			String radio = request.getParameter("radio");
			

			
			request.setAttribute("name", name);
			request.setAttribute("company", company);
			request.setAttribute("mail", mail);
			request.setAttribute("content", contact);
			request.setAttribute("mailmg", mailmg);
			request.setAttribute("radio", radio);
			
			if(radio.equals("Yes")) {
					request.getRequestDispatcher("../jsp/yes.jsp").forward(request, response);
				}else {
					request.getRequestDispatcher("../jsp/no.jsp").forward(request, response);
				}
		}catch(Exception e) {
			out.println(e);
		}
	}
}
