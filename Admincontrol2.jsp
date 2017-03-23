<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<body bgcolor="cyan">
<form action="" method="post">
<%! Connection con=null;
   PreparedStatement s=null;
   ResultSet rs=null;
   int id;
   String Doctor_name,Doctor_problem,Doctor_degree,Doctor_age,Doctor_Specialist,Doctor_contact;
  String Doctor_gender,Doctor_emailid,Doctor_registration,Doctor_Address,Doctor_time,Doctor_fees;
  %>
       

<%
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/clinic","root","barnali143"); 
	System.out.println("connected");
	s=con.prepareStatement("select * from doctor");
	rs=s.executeQuery();
	%>
	
							<a href="Nextjsp3.jsp"><button type="button" class="btn btn-secondary button-loading" data-loading-text="Loading...">Back</button></a>
	
							<a href="logout.jsp"><button type="button" class="btn btn-secondary button-loading" data-loading-text="Loading...">logout</button></a>
	

	<table  align="center" border="1" cellpadding="4" cellspacing="2">
	           <thead>
	           <th bgcolor="cyan">Doctor ID</th>
	           <th bgcolor="cyan">Doctor NAME</th>
	           <th bgcolor="cyan">Doctor Registration</th>
	           <th bgcolor="cyan">Doctor Address</th>
	            <th bgcolor="cyan">Doctor Email Id</th>
	            <th bgcolor="cyan">Doctor Specialist</th>
	            <th bgcolor="cyan">Doctor Degree</th>
	           <th bgcolor="cyan">Doctor Mobile Number</th>
	           <th bgcolor="cyan">Doctor fees</th>
	           <th bgcolor="cyan">Doctor time</th>
	           <th bgcolor="cyan">Delete</th>
	             <th bgcolor="cyan">Update</th>
	          
	          
	           
	           
	       </thead>
     <%
	
	     while(rs.next())
	        {
	                id=rs.getInt(1);
	            Doctor_name=rs.getString(2);
	             Doctor_registration=rs.getString(3);
	             Doctor_Address=rs.getString(4);
	             Doctor_Specialist=rs.getString(5);
	             Doctor_degree=rs.getString(6);
	             Doctor_contact=rs.getString(7);
	             Doctor_fees=rs.getString(8);
	             Doctor_time=rs.getString(9);
	             Doctor_emailid=rs.getString(10);
	             
	     %>
			
           <tr>    
              <td bgcolor="yellow"><font color="blue"><b><%=id%> </b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=Doctor_name%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=Doctor_registration%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=Doctor_Address%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=Doctor_emailid%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=Doctor_Specialist%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=Doctor_degree%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=Doctor_contact%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=Doctor_fees%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=Doctor_time%></b></font></td>
               <td><a href='NewFile.jsp?name=<%=Doctor_emailid%>'>Delete</a></td>
               <td><a href='Update2.jsp?name=<%=Doctor_emailid%>'>Update</a></td>
                  
               
               
           </tr>
            
           <%}%>
           
</table>


</body>
</html>