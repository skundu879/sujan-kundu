<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="b3.jpg">
<%!Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
String a,b,c,d,e,f,g,h,i;
%>
<table align="center" border="1" cellpadding="4" cellspacing="2">
<thead>
	           
	           <th bgcolor="cyan">Doctor NAME</th>
	           <th bgcolor="cyan">Doctor Registration</th>
	           <th bgcolor="cyan">Doctor Address</th>
	           <th bgcolor="cyan">Doctor Specialist</th>
	            <th bgcolor="cyan">Doctor Degree</th>
	            <th bgcolor="cyan">Doctor Contact</th>
	            <th bgcolor="cyan">Doctor Fees</th>
	           <th bgcolor="cyan">Doctor Time</th>
	           <th bgcolor="cyan">Doctor Mail</th>
	           <th bgcolor="cyan">Appointment</th>
	          </thead>


<% 
try{
	String email1=(String)session.getAttribute("key1");
	String m=request.getParameter("add");  
	String n=request.getParameter("disease");
String s=request.getParameter("doctor1");
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3308/clinic","root","barnali143");
ps=con.prepareStatement("UPDATE register  SET Address = '"+m+"', Deases='"+n+"' WHERE Email_Id = '"+email1+"';");
int k=ps.executeUpdate();
//String x=(String)session.getAttribute("key2");
ps=con.prepareStatement("select Doctor_Name,Doctor_Registration_No,Doctor_Address,Doctor_Specialist,Doctor_Degree,Doctor_Contact,Doctor_Fees,Doctor_Time,Doctor_Mail from doctor where Doctor_Specialist='"+s+"'");
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
 
 <tr>    
              <td bgcolor="yellow"><font color="blue"><b><%=a%> </b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=b%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=c%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=d%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=e%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=f%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=g%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=h%></b></font></td>
              <td bgcolor="white"><font color="blue"><b> <%=i%></b></font></td>
               <td><a href='Doctor1.jsp?name=<%=i%>'><button type="button">Get Appointment</button></a></td>
                  
               
               
           </tr>
<%}
	}catch(Exception l){
		System.out.println(l);
	}%>
</table>
</body>
</html>