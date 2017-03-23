<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="pack1.*"%>
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
String userId,Password ;
boolean status=false;
AdminLogin a;
%>
<%
try{
 userId=request.getParameter("user");  
 Password=request.getParameter("pass");  
 boolean b=AdminLogin.validate(userId, Password);
      
if(b==true){ 
	HttpSession hs=request.getSession(true);
	hs.setAttribute("key1",userId);
    RequestDispatcher rd=request.getRequestDispatcher("Nextjsp3.jsp");  
    rd.forward(request,response);  
}  
else{  
  %>
  
  <%  
  out.println("ok");
  RequestDispatcher rd=request.getRequestDispatcher("AdminLogin.jsp");  
    rd.forward(request,response);  
}  
}catch(Exception e){
	out.println(e);
}    
      
		%>
</body>
</html>