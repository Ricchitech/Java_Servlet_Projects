<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Student Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
	<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="#">
    <img src="https://lh3.googleusercontent.com/B0XlMgulOqt5vQObmrpyqj1XKRCy27OoxYG6fXZ3I2X88QS-zPwKyc65XMCqI7_UniU=w300" width="40" height="40" class="d-inline-block align-top" alt=""> Reva
    University 
  </a>
   <ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">View Data</a></li>
			</ul>  
</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Students</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					New Student</a>
			</div>
			<br>
			<table class="table table-bordered ">
				<thead>
					<tr>
						<th>SRN</th>  
						<th>Name</th>
						<th>Email</th>
						<th>Course</th>
						<th>Contact Number</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				 
					<c:forEach var="user" items="${listUser}">

						<tr>
						 <td><c:out value="${user.regno}" /></td> 	
							<td><c:out value="${user.name}" /></td>
							<td><c:out value="${user.email}" /></td>
							<td><c:out value="${user.course}" /></td>
							<td><c:out value="${user.contact}" /></td>
							<td><a class="btn btn-warning" href="edit?id=<c:out value='${user.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a class="btn btn-danger"
								href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>