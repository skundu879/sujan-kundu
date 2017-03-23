<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="images.jpg">
<%!Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
String fname,lname,gender,contact,dob,problem;
String age ,address,number;
%>

<%
try{
	//String email=(String)session.getAttribute("key1");
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3308/clinic","root","barnali143");
	
	
	Object obj=application.getAttribute("key");
	String email=obj.toString();
	out.println(email);
	
	
	fname=request.getParameter("t1");
	lname=request.getParameter("t2");
	gender=request.getParameter("t3");
	number=request.getParameter("t4");
	//email=request.getParameter("t5");
	age=request.getParameter("t5");
	dob=request.getParameter("t6");
	address=request.getParameter("t7");
	problem=request.getParameter("t8");
	out.println(fname+lname+gender);
	
	//ps=con.prepareStatement("Update register Set First_Name='"+fname+"',Last_Name='"+lname+"',Gender='"+gender+"',Contact_No='"+number+"',Age='"+age+"',Dob='"+dob+"',Patient_problem='"+problem+"',Doctor_Name='"+dname+"' where Email_Id='"+email+"'");
	
	ps=con.prepareStatement("Update register Set First_Name=?,Last_Name=?,Gender=?,Contact_No=?,Age=?,Dob=?,Address=?,Deases=? where Email_Id=?");
	ps.setString(1,fname);
	ps.setString(2,lname);
	ps.setString(3,gender);
	ps.setString(4,number);
	ps.setString(5,age);
	ps.setString(6,dob);
	ps.setString(7,address);
	ps.setString(8,problem);
	ps.setString(9,email);
		int i=ps.executeUpdate();
		
		if(i>0)
		{
			out.println( "Update Successful");
		}
	
}catch(Exception e){
	out.println(e);
}

%>

							<a href="Admincontrol1.jsp"><button type="button" class="btn btn-secondary button-loading" data-loading-text="Loading...">Back</button></a>

</body>
</html>