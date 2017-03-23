<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient List</title>
</head>

<body bgcolor="cyan" background="10.jpg">
<marquee scrollamount="10"><h1>Patient Details</h1></marquee>
<form action="" method="post">
<%! Connection con=null;
   PreparedStatement s=null;
   ResultSet rs=null;
   int id;
   String patient_firstname,patient_problem,doctor_name,patient_age,patient_dob,patient_contact,patient_lastname;
  String patient_gender,patient_emailid;
  %>
       

<%
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/clinic","root","barnali143"); 
	s=con.prepareStatement("select * from register");
	rs=s.executeQuery();
	%>
	

	<table  align="center" border="1" cellpadding="4" cellspacing="2">
	           <thead>
	           <th bgcolor="cyan">Patient_ID</th>
	           <th bgcolor="cyan">Patient_First NAME</th>
	           <th bgcolor="cyan">Patient_Last NAME</th>
	           <th bgcolor="cyan">Patient_Gender</th>
	           <th bgcolor="cyan">Patient_Cotact Number</th>
	           <th bgcolor="cyan">Patient_Email Id</th>
	           <th bgcolor="cyan">Patient_Age</th>
	           <th bgcolor="cyan">Patient_DOB</th>
	           <th bgcolor="cyan">Address</th>
	           <th bgcolor="cyan">Patient_Problem</th>
	            <th bgcolor="cyan">Delete</th>
	            <th bgcolor="cyan">Update</th>
	           
	       </thead>
     <%
	
	     while(rs.next())
	        {
	                               id=rs.getInt(1);
	             patient_firstname=rs.getString(2);
	             patient_lastname=rs.getString(3);
	             patient_gender=rs.getString(4);
	             patient_contact=rs.getString(5);
	             patient_emailid=rs.getString(6);
	             patient_age=rs.getString(7);
	             patient_dob=rs.getString(8);
	             patient_problem=rs.getString(9);
	             doctor_name=rs.getString(10);
	             
	            // out.print(patient_emailid);
	     %>
			
           <tr>    
              <td bgcolor="yellow"><font color="blue"><b><%=id%> </b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=patient_firstname%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=patient_lastname%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=patient_gender%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=patient_contact%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=patient_emailid%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=patient_age%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=patient_dob%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=doctor_name%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=patient_problem%></b></font></td>
               <td><a href='NewFile1.jsp?name=<%=patient_emailid %>'><button type="button">Delete</button></a></td>
                  <td><a href='Update1.jsp?name=<%=patient_emailid %>'><button type="button">Update</button></a></td>
               
               
           </tr>
            
           <%}%>
           				<center>
							<a href="Nextjsp3.jsp"><button type="button" class="btn btn-secondary button-loading" data-loading-text="Loading...">Back</button></a>
							<a href="logout.jsp"><button type="button" class="btn btn-secondary button-loading" data-loading-text="Loading...">logout</button></a>
           
						</center>
</table>
</form>
</body>
</html>