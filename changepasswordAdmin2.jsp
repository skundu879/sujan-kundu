<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>REGISTRATION</title>
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">-->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    </head>
    
    <body background="b5.jpg">
    	 <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="#">Online Clinic System</a>
      <img src="images.jpg" class="img-circle" alt="Cinque Terre" width="80" height="50">
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav navbar-right">
      <li class="active"><a href="index.html">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">rule 1-1</a></li>
          <li><a href="#">Parulege 1-2</a></li>
          <li><a href="#">Parulege 1-3</a></li>
        </ul>
      </li>
      <li><a href="#">About</a></li>
      <li><a href="patient_registration.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a><ul class="dropdown-menu">
          <li><a href="doctor_login.html">Doctor login</a></li>
          <li><a href="patient_login.html">Patient login</a></li>
          <li><a href="AdminLogin.jsp">Admin login</a></li>
        </ul>
          </li>
    </ul>
    </div>
  </div>
</nav><br>
<form method="post">
<%!Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
String pwd,pwd1;
String name;

%>
<%
try{
	//String email=request.getParameter("name");
	//String  i=(request.getParameter("name"));
	//System.out.println(i);
	
	pwd=request.getParameter("pwd");
	 pwd1=request.getParameter("pwd1");
	name=request.getParameter("name");
	if(pwd.equals(pwd1))
	{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3308/clinic","root","barnali143");
	ps=con.prepareStatement("Update  admin Set Admin_pass=? where Admin_Id=? ");
	ps.setString(1, pwd);
	ps.setString(2,name);
	
	int i=ps.executeUpdate();
	if(i>0)
	{
	%>
	
		<h1 style=" border: 15px solid black;background-color: lightblue;padding-top: 200px;padding-right: 30px;padding-bottom: 200px;padding-left: 400px; color:#339933"> password Changed Successfully</h1>
	<% 
	}
	}
}
	catch(Exception e)
	{
		out.print(e);
	}
%>






</form>
</body>
</html>