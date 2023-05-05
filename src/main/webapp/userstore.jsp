
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<title>Health Care</title>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-primary ">
		<a class="navbar-brand text-white" href="#">Health Care And
			Fitness Guid</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link text-white"
					href="indexx.jsp">Home <span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="about.jsp">AboutUs</a></li>
			</ul>

		</div>
	</nav>
	
<center>
<table class="table table-hover table-striped">
<thead>
<tr>

<th>Medicine Name</th>
<th>Medicine Quntity</th>
<th>Time</th>

<hr>
<br>
</tr>
</thead>
<%
String name=(String) request.getSession().getAttribute("name");

Connection conn=null;
Statement st=null;
ResultSet rs=null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/registor","root","54321");
    st=conn.createStatement();
	
	String qry="select * from registor.medicine where name= '"+name+"'";
	
	rs=st.executeQuery(qry);
	while(rs.next()){
		%>
		<tbody>
		<tr>
		
		
		<td data-label="Medicine_Name"><%= rs.getString(2) %></td>
		<td data-label="Medicine_Quntity"><%= rs.getString(3) %></td>
		<td data-label="Time"><%= rs.getString(4) %></td>
		
		
		</tr>
		</tbody>
		<%
	}
}catch(Exception ex){ }

%>
</table>
</center>

</body>
</html>