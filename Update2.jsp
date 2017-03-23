<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor Update</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor Update</title>
</head>
</head>
<body style="background:url(b1.jpg);background-repeat: repeat;">
 <div class="row">
                <div class="col-lg-12">
                     <div class="page-header" style="background-color:#40ff00;">
                         <h1 class="text-center" style="  color: rgba(4, 1, 33, 0.98);"><marquee srollamount="15"><b>Welcome <%=fname%></b></marquee></h1>
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
        <form method="post" action="Updated.jsp">


<%!Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
String fname,registration,gender,contact,fees,problem;
String time ,degree,email,address,specialist;
%>
<%
try{
	//String email=request.getParameter("name");
	String  i=(request.getParameter("name"));
	//System.out.println(i);
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3308/clinic","root","barnali143");
	ps=con.prepareStatement("select * from doctor where Doctor_Mail='"+i+"'");
	rs=ps.executeQuery();
	if(rs.next()){
		fname=rs.getString(2);
		registration=rs.getString(3);
		address=rs.getString(4);
		email=rs.getString(10);
		specialist=rs.getString(5);
		degree=rs.getString(6);
		contact=rs.getString(7);
		fees=rs.getString(8);
	
		time=rs.getString(9);
	//out.print(email);

		
		application.setAttribute("key",email);
		//RequestDispatcher rd=request.getRequestDispatcher("Updatep.jsp");
		//rd.forward(request,response);
		//response.sendRedirect("Updatep.jsp");
	}
	
}catch(Exception e){
	out.println(e);
}

%>

        
        <div class="form-group">
        <label for="email"><h3>  Name:</h3></label>
         <input type="text" name="t1" style="width:250px; background-color:#40ff00; color: #000000;" class="form-control" value="<%=fname %>">
            </div>
            <div class="form-group">
        <label for="email"><h3> Registration Number:</h3></label>
         <input type="text" name="t2" style="width:250px; background-color:#40ff00; color: #000000;" class="form-control" value="<%=registration %>">
            </div>
              <!-- <div class="form-group">
        <label for="email"><h3>Gender:</h3></label>
         <input type="text" name="t3" style="width:250px; background-color:#40ff00; color: #000000;" class="form-control" value="<%=gender %>">
            </div>
            -->
               <div class="form-group">
        <label for="email"><h3>Address:</h3></label>
         <input type="text" name="t4" style="width:250px; background-color:#40ff00; color: #000000;" class="form-control" value="<%=address %>">
            </div>
          
       <div class="form-group">
        <label ><h3> Specialist:</h3></label>
         <input type="text"  name="t5"style="width:250px; background-color:#40ff00; color: #000000;" class="form-control" value="<%=specialist%>">
            </div>
             <div class="form-group">
        <label for="email"><h3> Degree :</h3></label>
         <input type="text"  name="t6" style="width:250px; background-color:#40ff00; color: #000000;" class="form-control" value="<%=degree%>">
            </div>
             <div class="form-group">
        <label for="email"><h3>Number:</h3></label>
         <input type="text" name="t7" style="width:250px; background-color:#40ff00; color: #000000;" class="form-control" value="<%=contact%>">
            </div>
           
            <div class="form-group">
        <label for="email"><h3>Fees:</h3></label>
         <input type="text" name="t8" style="width:250px; background-color:#40ff00; color: #000000;" class="form-control" value="<%= fees %>">
            </div>
            <div class="form-group">
        <label for="email"><h3>Time:</h3></label>
         <input type="text" name="t9" style="width:250px; background-color:#40ff00; color: #000000;" class="form-control" value="<%=time%>">
            </div>
             <div class="form-group">
        <label for="email"><h3></h3></label>
         <input type="submit" style="width:250px; class="btn btn-primary button-loading " value="submit">
         </div>
         <br>
         
							<a href="Admincontrol2.jsp"><button type="button" class="btn btn-secondary button-loading" data-loading-text="Loading...">Back</button></a>
         
            </div>
   


</form>
</body>
</html>