<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="2.jpg">
<%!Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
String fname,lname,gender,contact,dob,problem;
String age ,dname,number;
%>

<%
try{
	//String email=(String)session.getAttribute("key1");
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3308/clinic","root","barnali143");
	
	
	Object obj=application.getAttribute("key");
	
	String email=obj.toString();
	fname=request.getParameter("t1");
	String registration=request.getParameter("t2");
	String address=request.getParameter("t4");
	String specialist=request.getParameter("t5");
	String degree=request.getParameter("t6");
	String Number=request.getParameter("t7");
	String fees=request.getParameter("t8");
	String time=request.getParameter("t9");

	
	ps=con.prepareStatement("Update doctor Set Doctor_Name=?,Doctor_Registration_No=?,Doctor_Address=?,Doctor_Specialist=?,Doctor_Degree=?,Doctor_Contact=?,Doctor_Fees=?,Doctor_Time=? where Doctor_Mail=?");
	ps.setString(1,fname);
	ps.setString(2,registration);
	ps.setString(3,address);
	ps.setString(4,specialist);
	ps.setString(5,degree);
	ps.setString(6,Number);
	ps.setString(7,fees);
	ps.setString(8,time);
	ps.setString(9,email);
		int i=ps.executeUpdate();
		
		if(i>0)
		{
			out.println("Update Successful");
		}
	
}catch(Exception e){
	out.println(e);
}

%>

							<a href="Admincontrol2.jsp"><button type="button" class="btn btn-secondary button-loading" data-loading-text="Loading...">Back</button></a>


							<a href="logout.jsp"><button type="button" class="btn btn-secondary button-loading" data-loading-text="Loading...">logout</button></a>

</body>
</html>