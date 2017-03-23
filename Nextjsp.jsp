<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Patient Profile</title>
      <meta charset="utf-8">
      <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" type ="text/css" src="style.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
.mySlides {display:none}
.w3-left, .w3-right, .w3-badge {cursor:pointer}
.w3-badge {height:13px;width:13px;padding:0}
</style>
    </head>
    <!-- header  start -->
    <body style="height: 100%; width: 100%;">
    <%!Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
String fname,lname,gender,contact,mail;
int age;
%>
<%
try{
	String email=(String)session.getAttribute("key1");
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3308/clinic","root","barnali143");
	ps=con.prepareStatement("select First_Name,Last_Name,Gender,Contact_No,Email_Id,Age from register where Email_Id='"+email+"'");
	rs=ps.executeQuery();
	if(rs.next()){
		fname=rs.getString(1);
		lname=rs.getString(2);
		gender=rs.getString(3);
		contact=rs.getString(4);
		mail=rs.getString(5);
		age=rs.getInt(6);
	}
}catch(Exception e){
	out.println(e);
}
%>
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
      <li><a href="patient_registration.html"><span class="glyphicon glyphicon-user"></span>Welcome <%=fname %></a></li>
        <!--  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a><ul class="dropdown-menu">
          <li><a href="doctor_login.html">Doctor login</a></li>
          <li><a href="patient_login.html">Patient login</a></li>
          <li><a href="AdminLogin.jsp">Admin login</a></li>
        </ul>
          </li>
          -->
    </ul>
    </div>
  </div>
</nav><br>

  <div class="row">
                <div class="col-lg-12">
                     <div class="page-header" style="background-color:#40ff00;">
                         <h1 class="text-center" style="  color: rgba(4, 1, 33, 0.98);"><b>Welcome <%=fname+" "+lname %></b></h1>
          </div>
          </div>
                    <!--<h1 class="page-header">Online Registration from</h1>-->
         
            </div>
        <div class="modal-dialog" >
            <div class="col-lg-12 modal-header" style="background-color:#d9b3ff;">
                <div class="panel panel-default" style="background-color:#ccffcc;">
                    <div class="panel-heading text-center" style="background-color:#1a1a00;">
                  <h2 style="  color: #ffffff;"><%=fname+" Profile" %></h2> 
                    </div>
                <div class="panel-body">
                    <div class="col">
                        <div class="col-lg-12">
                            <div role="form">
         <div class="col-lg-6">
        <form method="post" action="Doctor.jsp">
        <div class="form-group">
        <label for="email"><h3>Name:</h3></label>
         <p style="width:250px; background-color:#40ff00; color: #000000;" class="form-control"><%=fname+" "+lname %></p>
            </div>
            <div class="form-group">
        <label for="email"><h3>Gender:</h3></label>
         <p style="width:250px; background-color:#40ff00; color: #000000;" class="form-control"><%=gender %></p>
            </div>
               <div class="form-group">
        <label for="email"><h3>Contact No:</h3></label>
         <p style="width:250px; background-color:#40ff00; color: #000000;" class="form-control"><%=contact %></p>
            </div>
       
       <div class="form-group">
        <label for="email"><h3>Email Id:</h3></label>
         <p style="width:300px; background-color:#40ff00; color: #000000;" class="form-control"><%=mail %></p>
            </div>
            <div class="form-group">
        <label for="email"><h3>Age:</h3></label>
         <p style="width:100px; background-color:#40ff00; color: #000000;" class="form-control"><%=age %></p>
            </div>
       
            <div style="width:400px;" class="form-group">
     <label for="comment"><h3>Full Address.</h3></label>
      <textarea class="form-control" rows="3" name="add" placeholder="Full Address............."></textarea>
    </div>
    <div style="width:400px;" class="form-group">
     <label for="comment"><h3>Your Disease</h3></label>
      <textarea class="form-control" rows="3" name="disease" placeholder="Enter Your Disease"></textarea>
    </div>
            <div class="form-group">
      <label><h3>Choose Your Specialist</h3></label>
        <select style="width:auto;" class="form-control" name="doctor1">
    <option value="Ophthalmologist">Ophthalmologist</option>
	<option value="Neurologist">Neurologist</option>
	<option value="Gynecologist">Gynecologist</option>
	<option value="Cardiologist">Cardiologist</option>
	<option value="Gastroenterologist">Gastroenterologist</option>
	<option value="Plastic Surgeon">Plastic Surgeon</option>
	<option value="Orthopaedics">Orthopaedics</option>
	<option value="Dental specialist">Dental specialist</option>
	<option value="Genarel Physician">Genarel Physician</option>

</select>
</div>
		 <div style="position: relative; left: 400px;">
       <input type="submit" class="btn btn-primary"><br><br>
            </div>
            </form>
            </div>
            
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>  
             
             
                                
</body>
</html>