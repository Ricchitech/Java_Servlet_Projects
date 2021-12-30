<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Books Store</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<header>
	<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="#">
    <img src="media/logo.png" width="40" height="40" class="d-inline-block align-top" alt=""> Reva
    Book Store 
  </a>
  <ul class="navbar-nav">
   <li><a class="btn btn-primary" href='books.jsp'>View Books</a></li> 
			</ul> 
</nav>
	</header>
	<br>
	
	
	<div class="container-fluid card" style="width:30rem;">
	<h2 class="bg-danger text-white text-center p-1 rounded mt-2">Edit Book Details</h2>

    
    <% 
    //int id = Integer.parseInt(req.getParameter("id"));

	try {
		Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException cnf) {
			cnf.printStackTrace();
		}
		//generate the connection
		try(Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb?useSSL=false","root","root");
				PreparedStatement ps = con.prepareStatement("SELECT BOOKNAME,BOOKEDITION,BOOKPRICE FROM BOOKDATA where id=?");){
		//	ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			rs.next();
			
					%>
					
		<form action='editurl?id="+id+"' method="post">
    <table class="table table-hover">			 
       <tr>
        <td>Book Name</td>
        <td><input type="text" name="bookName" required value='+rs.getString(1)+'></td>
       </tr>
       <tr>
        <td>Book Edition</td>
        <td><input type="text" name="bookEdition" required value='+rs.getString(2)+'></td>
       </tr>
       <tr>
        <td>Book Price</td>
        <td><input type="number" name="bookPrice" required value='+rs.getFloat(3)+'></td>
       </tr>
       <tr>
        <td><input type="submit" class="btn btn-success" value="Update"></td>
       </tr>
    </table>
    
</form>
<% 
		}
%>
	</div>
	
	
</body>
</html>