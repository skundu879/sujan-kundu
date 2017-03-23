<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Update</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
</head>
<body background="6.jpg">
 <div class="row">
                <div class="col-lg-12">
                     <div class="page-header" style="background-color:#40ff00;">
                         <h1 class="text-center" style="  color: rgba(4, 1, 33, 0.98);"><marquee scrollamount="15"><b>Welcome <%=fname+" "+lname %></b></marquee></h1>
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
        <form method="post" action="Updatep.jsp">


<%!Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
String fname,lname,gender,contact,dob,problem;
String age ,dname,email;
%>
<%
try{
	//String email=request.getParameter("name");
	String  i=(request.getParameter("name"));
	//System.out.println(i);
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3308/clinic","root","barnali143");
	ps=con.prepareStatement("select * from register where Email_Id='"+i+"'");
	rs=ps.executeQuery();
	if(rs.next()){
		fname=rs.getString(2);
		//out.print(fname);
		lname=rs.getString(3);
		gender=rs.getString(4);
		contact=rs.getString(5);
		email=rs.getString(6);
		age=rs.getString(7);
		dob=rs.getString(8);
		problem=rs.getString(9);
		dname=rs.getString(10);
		application.setAttribute("key",email);
		
	}
	
}catch(Exception e){
	out.println(e);
}

%>

        
        <div class="form-group">
        <label for="email"><h3> First Name:</h3></label>
         <input type="text" name="t1" style="width:250px; background-color:#40ff00; color: #000000;" class="form-control" value="<%=fname %>">
            </div>
            <div class="form-group">
        <label for="email"><h3> Last Name:</h3></label>
         <input type="text" name="t2" style="width:250px; background-color:#40ff00; color: #000000;" class="form-control" value="<%=lname %>">
            </div>
            <div class="form-group">
        <label for="email"><h3>Gender:</h3></label>
         <input type="text" name="t3" style="width:250px; background-color:#40ff00; color: #000000;" class="form-control" value="<%=gender %>">
            </div>
               <div class="form-group">
        <label for="email"><h3>Contact No:</h3></label>
         <input type="text" name="t4" style="width:250px; background-color:#40ff00; color: #000000;" class="form-control" value="<%=contact %>">
            </div>
       
 
            <div class="form-group">
        <label><h3>Age:</h3></label>
         <input type="text"  name="t5" style="width:100px; background-color:#40ff00; color: #000000;" class="form-control" value="<%=age%>">
            </div>
          
       <div class="form-group">
        <label ><h3> DOB:</h3></label>
         <input type="text"  name="t6"style="width:250px; background-color:#40ff00; color: #000000;" class="form-control" value="<%=dob%>">
            </div>
             <div class="form-group">
        <label for="email"><h3> Patient Address :</h3></label>
         <input type="text"  name="t7" style="width:250px; background-color:#40ff00; color: #000000;" class="form-control" value="<%=dname%>">
            </div>
             <div class="form-group">
        <label for="email"><h3>Deases:</h3></label>
         <input type="text" name="t8" style="width:250px; background-color:#40ff00; color: #000000;" class="form-control" value="<%=problem%>">
            </div>
             <div class="form-group">
         <input type="submit" class="btn btn-primary form-control " value="submit"><br>
         					<div style="position: relative; left: 400px;">
							<a href="Admincontrol1.jsp"><button type="button" class="btn btn-secondary" data-loading-text="Loading...">Back</button></a>
         					</div>
            </div>
   


</form>
</body>
</html>