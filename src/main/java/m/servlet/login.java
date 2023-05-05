package m.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;

/**
 * Servlet implementation class login
 */
@WebServlet("/Login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("username");
		String pass=request.getParameter("password");
		java.sql.Connection con=null;try {
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306/registor","root","54321");
			java.sql.PreparedStatement pst =  con.prepareStatement("select * from info where username = ? and Password = ?");
		pst.setString(1, uname);
		pst.setString(2, pass);

		ResultSet rs=pst.executeQuery();
		if(rs.next()) {
			request.getSession().setAttribute("name", rs.getString("username"));
			
			response.sendRedirect("indexx.jsp");

		}else {
			request.setAttribute("status", "failed");
			
			response.sendRedirect("index.jsp");
			
		}

		} catch (Exception e) {
		e.printStackTrace();
		}
	}

}
