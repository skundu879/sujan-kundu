<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<center>
<body background="b2.jpg">
<%

	try{
		Connection con=null;
		   Statement s=null;
		   ResultSet rs=null;

		   String  n=(request.getParameter("name"));
		Class.forName("com.mysql.jdbc.Driver");
		 con=DriverManager.getConnection("jdbc:mysql://localhost:3308/clinic","root","barnali143");
		 s=con.createStatement();
	
		
		int i=s.executeUpdate("Delete  from doctor where Doctor_Mail='"+n+"'");
		if(i>0)
		{
		%>
		
		<h1 Style="color:red"> Delete Successful</h1>
		<a href="Admincontrol2.jsp"><button style="padding: 19px 50px;" type="button" class="btn btn-primary button-loading" data-loading-text="Loading...">Back</button></a>
			
		<a href="logout.jsp"><button style="padding: 19px 50px;" type="button" class="btn btn-primary button-loading" data-loading-text="Loading...">logout</button></a>
		
		<%
		}
	}catch(Exception e){
		System.out.println(e);
	}


  %>
  
							
  		</center>						
</body>
</html>