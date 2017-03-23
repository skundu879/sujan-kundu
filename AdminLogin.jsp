<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/css1/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="css/css1/bootstrap-theme.min.css">

<!---style.css --->    
<link rel="stylesheet" href="css/css1/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="login-container">
            <div id="output"></div>
              <hr class="divider">
                <h2 style="color:grey;font-family: fantasy">Admin Login</h2>
               <hr class="divider">
            <div class="form-box">
                <form action="Login.jsp" method="post">
                    <input name="user" type="text" required placeholder="user id">
                    <input type="password" name="pass" required placeholder="password">
<button class="btn btn-info btn-block login" type="submit">Login</button>
<a href="changepasswordAdmin1.jsp"><button class="btn btn-info btn-block login" type="button">Forgot Password</button></a>
            </form>
              
            </div>
        <br>
        </div>
  
</div> 
</body>
</html>