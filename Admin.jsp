<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
</nav><br>
<div class="row">
                <div class="col-lg-12">
                     <div class="page-header">
                         <h1 class="text-center" style="color: rgba(4, 1, 33, 0.98);"><b>Doctor Adding portal</b></h1>
          </div>
                    <!--<h1 class="page-header">Online Registration from</h1>-->
         
            </div>
        <div class="modal-dialog" >
            <div class="col-lg-12 modal-header">
                <div class="panel panel-default">
                    <div class="panel-heading">
                   <center><b style="color:red;"> Doctor registration </b></center>
                    </div>
                <div class="panel-body">
                    <div class="col">
                        <div class="col-lg-12">
                            <div role="form">
         <div class="col-lg-6">
        <form method="post" action="AddDoctor.jsp">
        <div class="form-group">
        <label for="email">Name:</label>
         <input style="width:400px;" class="form-control" type="text" name="name" placeholder="Enter Name" >
            </div>
            <div style="width:400px;" class="form-group">
          <label for="email">Registration No:</label>
         <input class="form-control" type="text" name="rno" placeholder="Enter registration no">
            </div>
      <div class="form-group">
      <label>Choose Your Specialist</label>
        <select style="width:250px;" class="form-control" name="doctor">
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
       <div style="width:300px;" class="form-group">
        <label>Contact No.</label>
        <input maxlength="14" class="form-control" style="padding-left:15px;" name="mobile">      
        </div>
        <div style="width:400px;" class="form-group">
      <label for="email">Email Id:</label>
        <input class="form-control" type="email" name="mail" placeholder="example@gmail.com">
        </div>
             <div style="width:200px;" class="form-group">
      <label for="email">Address:</label>
        <input class="form-control" type="text" name="add" placeholder="Address">
        </div>
        <div class="form-group">
         <label>Degree</label>
            <input type="text" class="form-control" name="degree">
                <span class="bv wt"></span>
                </div>
             <div class="form-group">
             <div style="width:200px;" class="form-group">
      <label for="email"> Doctor Fees:</label>
        <input class="form-control" type="text" name="fees" placeholder="Enter Fees">
        </div>
        
        <div style="width:200px;" class="form-group">
      <label for="email">Time:</label>
        <input class="form-control" type="text" name="time" placeholder="Enter avilable time">
        </div>
                                        <table class="table table-hover">
                                             <label for="yop">Create Password:</label>
         <input style="width:auto;" class="form-control" type="password" name="pass" placeholder="Enter Password">
                                            </table>
                                        </div>
            
            <input type="submit" value="submit" id="submit" class="btn btn-primary button-loading" data-loading-text="Loading...">
                                
           <a href="index.html"><input type="button" class="btn btn-primary" value="Exit"></a>
                
             </form>
                                </div>
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