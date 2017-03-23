<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@page import="pack1.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
String a,b;
Dlogin p;
%>
<%
try{
	 a=request.getParameter("doctorid");  
	 b=request.getParameter("doctorpass");  
	 boolean b1=Dlogin.validate(a,b);
	      
	if(b1=true){ 
		HttpSession hs=request.getSession(true);
		hs.setAttribute("key6",a);
	    RequestDispatcher rd=request.getRequestDispatcher("Appointment.jsp");  
	    rd.forward(request,response);  
	}  
	else{ 
	  RequestDispatcher rd=request.getRequestDispatcher("doctor_login.html");  
	    rd.forward(request,response);  
	    
	   out.println("sorry");
	   
	}  
	}catch(Exception e){
		out.println(e);
	}    
%>

</body>
</html>