<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<center>
<body background="b3.jpg">
<%

	try{
		Connection con=null;
		   Statement s=null;
		  
		   String  n=(request.getParameter("name"));
		Class.forName("com.mysql.jdbc.Driver");
		 con=DriverManager.getConnection("jdbc:mysql://localhost:3308/clinic","root","barnali143");
		 s=con.createStatement();
		int i=s.executeUpdate("Delete  from register where Email_Id='"+n+"' ");
		if(i>0)
		{
			%>
			
			<h1 style=" border: 15px solid black;background-color: lightblue;padding-top: 200px;padding-right: 30px;padding-bottom: 200px;padding-left: 400px; color:#339933"> Deleted Successfully</h1>
		<% 
		}
	}catch(Exception e){
		System.out.println(e);
	}


  %>
  
  
							<a href="Admincontrol1.jsp"><button style="padding: 19px 50px;background-color: red;" type="button" data-loading-text="Loading...">Back</button></a>
  
</body>
</center>
</html>