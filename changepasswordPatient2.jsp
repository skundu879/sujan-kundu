<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post">
<%!Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
String fname,lname,gender,contact,dob,problem,pwd,pwd1;
String age ,dname,email;
%>
<%
try{
	//String email=request.getParameter("name");
	//String  i=(request.getParameter("name"));
	//System.out.println(i);
	
	pwd=request.getParameter("pwd");
	pwd1=request.getParameter("pwd1");
	email=request.getParameter("email");
	if(pwd.equals(pwd1))
	{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3308/clinic","root","barnali143");
	ps=con.prepareStatement("Update  register Set Password=? where Email_id=? ");
	ps.setString(1, pwd);
	ps.setString(2,email);
	
	int i=ps.executeUpdate();
	if(i>0)
	{
		out.println("Password change Successful");
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