package m.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Admin
 */
@WebServlet("/adminnn")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("in Do get");
		System.out.println(request.getParameter("username"));
		System.out.println(request.getParameter("password"));
		if("Admin".equals(request.getParameter("username")) && "123".equals(request.getParameter("password"))) {
			System.out.println("Login Succesfully");
			
			response.sendRedirect("home.jsp");
			
		}else {
			request.setAttribute("msg", "Username and Password Incorrect");
			
			response.sendRedirect("Admin.jsp");
			
		}
	}

	

}
