

<%@page import="com.reva.p1.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("logUser");
    if(user==null){
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
        <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
    </head>
    <body>
        <h1> Welcome, <%= user.getName() %></h1>
        <h6>Your Account ID: <%= user.getId() %> </h6>
        <h6>Your Email: <%= user.getEmail() %> </h6>
        <h6>Your Password: <%= user.getPassword() %></h6>
        
        <a class="btn btn-primary" href="LogoutServlet">Log Out</a>
    </body>
</html>
