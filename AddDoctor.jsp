<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
    <%@ page import="pack1.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="b5.jpg"><% 
String m=request.getParameter("name");  
String n=request.getParameter("rno");  
String o=request.getParameter("add");  
String p=request.getParameter("doctor");
String q=request.getParameter("degree");
String r=request.getParameter("mobile");
String s=request.getParameter("fees");
String t=request.getParameter("time");
String u=request.getParameter("mail");
String v=request.getParameter("pass");
try{
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3308/clinic","root","barnali143");  
	      
	PreparedStatement ps=con.prepareStatement(  
	"insert into doctor(Doctor_Name,Doctor_Registration_No,Doctor_Address,Doctor_Specialist,Doctor_Degree,Doctor_Contact,Doctor_Fees,Doctor_Time,Doctor_Mail,Doctor_Pass) values(?,?,?,?,?,?,?,?,?,?)"); 
	ps.setString(1,m);  
	ps.setString(2,n);  
	ps.setString(3,o);  
	ps.setString(4,p);
	ps.setString(5,q);
	ps.setString(6,r);
	ps.setString(7,s);
	ps.setString(8,t);
	ps.setString(9,u);
	ps.setString(10,v);
	int i=ps.executeUpdate();  
	if(i>0){
		%><center>
		<h1 style="color:red;">ThankYou you are successfully registered</h1>
		</center>
		<% 
	}
	else{
		%>
		<h1>Your Mail:<%=u %> already Register.</h1>
		<%
	}

		
		
}catch(Exception e){
	System.out.println(e);
}
			%>
</body>
</html>