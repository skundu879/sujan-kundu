<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<title>
Forget Password
</title>
<head>
<h1 align="center"><b>Forget Password</b></h1>
</head>
<body>
<form action="changePassworddoctor2.jsp" method="post">



<table align="center">
<tr>
<td>
Email id
</td>
<td><input type="text" name="email"></td>
</tr>
<tr>
<td>
New password
</td>
<td><input type="Password" name="pwd"></td>
</tr>
<tr>
<td>
Re Enter Password 
</td>
<td><input type="password" name="pwd1"></td>
</tr>
</table>
<table align="center">
<tr>
<td><input type="submit" value="submit"></td>
</tr>
</table>
</form>
</body>
</html>