<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Account</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
    </head>
    <body>
        <div class="container">

            <div class="regbox box">
                <img class="avatar" src="media/user-avatar.png">
                <h1>Register Account</h1>
                <form action="RegisterServlet" method="post">
                    <p>Username</p>
                    <input type="text" placeholder="Username" name="name" required>
                    <p>Email</p>
                    <input type="text" placeholder="Email id" name="email" required>
                    <p>Password</p>
                    <input type="password" placeholder="Password" name="password" required>
                    <input type="submit" value="Register">
                    <a class="btn" href="index.jsp">Already have Account?</a>
                </form>
            </div>

        </div>

    </body>
</html>
