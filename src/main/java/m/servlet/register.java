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

@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("username");
		String Pass=request.getParameter("Password");
		String CPass=request.getParameter("ConfirmPass");
		
	
	java.sql.Connection con = null;

try {
	Class.forName("com.mysql.jdbc.Driver");
 con= DriverManager.getConnection("jdbc:mysql://localhost:3306/registor","root","54321");
PreparedStatement pst =  con.prepareStatement("insert into info(username,Password,ConfirmPass) values(?,?,?)");
	pst.setString(1,uname);
	pst.setString(2, Pass);
	pst.setString(3, CPass);

	
	int rowcount =pst.executeUpdate();
	
	
	if(rowcount >0 ) {
		request.setAttribute("status", "success");
		System.out.println("insert seuccsesful");
	}else {
		request.setAttribute("status", "failed");
	}
	response.sendRedirect("index.jsp");
	
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
