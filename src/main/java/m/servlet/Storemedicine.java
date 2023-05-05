package m.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class Storemedicine
 */
@WebServlet("/Storemedicine")
public class Storemedicine extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Mname=request.getParameter("Mname");
		String Qnumber=request.getParameter("Qnumber");
		String time=request.getParameter("time");
		String name=request.getParameter("name");
		
//		PrintWriter out=response.getWriter();
//		out.print("its Work");
		
		
		java.sql.Connection con = null;

	try {
		Class.forName("com.mysql.jdbc.Driver");
	 con= DriverManager.getConnection("jdbc:mysql://localhost:3306/registor","root","54321");
	PreparedStatement pst =  con.prepareStatement("insert into medicine(Mname,Qnumber,time,name) values(?,?,?,?)");
		pst.setString(1,Mname);
		pst.setString(2, Qnumber);
		pst.setString(3, time);
		pst.setString(4, name);

		
		int rowcount =pst.executeUpdate();
		
		if(rowcount >0 ) {
			request.setAttribute("status", "success");
			System.out.println("insert seuccsesful");
		}else {
			request.setAttribute("status", "failed");
		}
		response.sendRedirect("about.jsp");
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		if(con != null) {
			try {
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
		
	}

}
