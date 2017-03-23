<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
</nav><br><br><br><br>
<body>
<%!Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
String a,b,c,d,e,f,g,h,i;
%>
<table align="center" border="1" cellpadding="4" cellspacing="2">
<thead>
	           <th bgcolor="cyan">Patient Id</th>
	           <th bgcolor="cyan">Patient NAME</th>
	           <th bgcolor="cyan">Gender</th>
	           <th bgcolor="cyan">Contact</th>
	           <th bgcolor="cyan">Email</th>
	            <th bgcolor="cyan">Age</th>
	            <th bgcolor="cyan">Address</th>
	            <th bgcolor="cyan">Deases</th>
	          </thead>


<% 
try{
	//String m=request.getParameter("name");
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3308/clinic","root","barnali143");
String x=(String)session.getAttribute("key6");
//System.out.println(x);
ps=con.prepareStatement("select * from request where Doctor_Email='"+x+"'");
rs=ps.executeQuery();
	while(rs.next()){
		a=rs.getString(1);
		b=rs.getString(2);
		c=rs.getString(3);
		d=rs.getString(4);
		e=rs.getString(5);
		f=rs.getString(6);
		g=rs.getString(7);
		h=rs.getString(8);
		i=rs.getString(9);
		
		//session.setAttribute("key3",i);
		//RequestDispatcher rd=request.getRequestDispatcher("ViewPatient.jsp");
%>
 
 <tr>    	  <td bgcolor="green"><font color="blue"><b> <%=a%></b></font></td>
              <td bgcolor="yellow"><font color="blue"><b><%=b+" "+i%> </b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=c%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=d%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=e%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=f%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=g%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=h%></b></font></td>
              <!--   <td><a href="Doctor1.jsp">Get Appointment</a></td> -->
                  
               
               
           </tr>
<%}
	}catch(Exception l){
		System.out.println(l);
	}%>
</table>
</body>
</html>