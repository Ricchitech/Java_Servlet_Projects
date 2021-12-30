<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<html>
<head>
<title>Books Store</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<header>
	<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="">
    <img src="media/logo.png" width="40" height="40" class="d-inline-block align-top" alt=""> Reva
    Book Store 
  </a>
   <ul class="navbar-nav">
				<li><a class="btn btn-primary" href='home.html'>Home</a></li>
			</ul>  
</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<div class="container text-left">

				<a href="home.html" class="btn btn-success">Add
					New Book</a>
			</div>
			<br>
			<table class="table table-bordered " style="text-align:center;">
				<thead>
					<tr style="color:brown; ">
						 <th>ISBN</th>  
						<th>Book Name</th>
						<th>Book Edition</th>
						<th>Price of Book</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				<% 
				Connection con = null;
				Statement stmt = null;
				ResultSet rs = null;

				try{
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb?useSSL=false","root","root");
					stmt = con.createStatement();
					rs = stmt.executeQuery("select * from bookdata");
					while(rs.next()){
					%>
					
					<tr>
						<td><%=rs.getInt(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getFloat(4)%></td>
						<td>
							<a href='editScreen?id=<%=rs.getInt(1)%>' class="btn btn-primary">Edit</a>
							<a href='deleteurl?id=<%=rs.getInt(1)%>' class="btn btn-danger">Delete</a>
						</td>
					</tr>

					<%	
						
					}
				}catch
				(Exception e){
					e.printStackTrace();
				}
				%>
					
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>