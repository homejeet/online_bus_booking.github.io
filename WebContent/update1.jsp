<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" import="java.util.*" %>
<%
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/company";
String user="root";
String password="1234";
String qry="update route set seats=? where rid=? ";



try{
	Class.forName(driver);
	Connection con=(Connection) DriverManager.getConnection(url,user,password);
	PreparedStatement stmt=(PreparedStatement) con.prepareStatement(qry);
	/* String origin=(String)application.getAttribute("origin");
	String destination=(String)application.getAttribute("destination");
	int dist1=(Integer)application.getAttribute("dist1");
	int dist2=(Integer)application.getAttribute("dist2");
	String totaltime=(String)application.getAttribute("totaltime"); */
	int seatno=(Integer)application.getAttribute("seatno"); 
	int routeid=(Integer)application.getAttribute("routeid");
	/* float price=(Float)application.getAttribute("price"); */
	
	/*  stmt.setInt(1,Integer.parseInt(request.getParameter("ticket"))); */
	
	/* stmt.setString(2, destination);
	stmt.setInt(3, dist1);
	stmt.setInt(4, dist2);
	/*stmt.setString(5,totaltime);*/
	  
		   if(seatno<=20)
		   {
		   int seat=seatno + 1;
			
			stmt.setInt(1,seat); 
			stmt.setInt(2, routeid);	
		   
			RequestDispatcher rd=request.getRequestDispatcher("cancel.html");
			rd.forward(request,response);	
			out.print("ticket cancelled .....");
		   }
		   else
		   {
			   out.print("already cancelled...");   
			   RequestDispatcher rd=request.getRequestDispatcher("cancel.html");
				rd.forward(request,response);	
			   
			
			   
		   }
	
	/* stmt.setFloat(8,price); */
	int status=stmt.executeUpdate();
	

	
	if(status>0)
	{
			
	 	//out.print("<b><font color='red'> fails....</font></b>"); 
		
		
		
	}
	
/* 	else{
		
		out.print("<b><font color='red'> ticket cancelled </font></b>");
		RequestDispatcher rd=request.getRequestDispatcher("cancel.html");
		rd.include(request,response);
		
	} */
	
}catch(Exception e){e.printStackTrace();}

%>



</body>
</html>