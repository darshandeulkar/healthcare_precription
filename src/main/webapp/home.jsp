<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/Style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--Fontawesome cdn-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Document</title>
</head>
<body>
    <style>

.anii img{
    width: 100%;
    height: 50%;
}
.row{
    padding-top: 50px;
}
table{
width:100%;
border-collapse:collapse;
}
.table td,.table th{
padding; 12px 15px;
boder:1px solid #ddd;
text-align:center;
}
.table th{
background-color: darkblue;
color:#ffffff;
}
.table tbody tr:nth-child(even){
background-color: #f5f5f5;
}
    </style>
    <div class="bgimg">
        <nav class="navbar navbar-expand-lg bg-primary navbar-dark fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand text-warning font-weight-bold" href="#">Health Care And Fitness Guid</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse text-center" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="nav-link text-white" href="index.jsp">Home</a>
              <a class="nav-link text-white" href="Admin.jsp">Logout</a>
              
              
            </div>
          </div>
        </div>
    </nav>
</div>


<center>
<table class="table table-hover table-striped">
<thead>
<tr>
<th>sr.no</th>
<th>Medicine Name</th>
<th>Medicine Quntity</th>
<th>Time</th>

<hr>
<br>
</tr>
</thead>
<%
Connection conn=null;
Statement st=null;
ResultSet rs=null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/registor","root","54321");
	st=conn.createStatement();
	
	String qry="select * from medicine"; 
	rs=st.executeQuery(qry);
	while(rs.next()){
		%>
		<tbody>
		<tr>
		
		<td data-label="sr.no"><%= rs.getInt(1) %></td>
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