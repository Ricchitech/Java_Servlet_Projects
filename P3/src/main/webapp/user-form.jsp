

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
  <a class="navbar-brand" href="/">
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

	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
            			Add New User
            		</c:if>
					</h2>
				</caption>

			  	<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>
				
				<fieldset class="form-group">
					<label>SRN</label> <input type="text"
						value="<c:out value='${user.regno}' />" class="form-control"
						name="regno" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Student Name</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Student Email</label> <input type="text"
						value="<c:out value='${user.email}' />" class="form-control"
						name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>Course</label> <input type="text"
						value="<c:out value='${user.course}' />" class="form-control"
						name="course">
				</fieldset>
				<fieldset class="form-group">
					<label>Contact Number</label> <input type="text"
						value="<c:out value='${user.contact}' />" class="form-control"
						name="contact">
				</fieldset>

				<button type="submit" class="btn btn-primary">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>