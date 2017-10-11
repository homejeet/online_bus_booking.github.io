<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%@page import="java.util.*"  %>
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
	
	/* stmt.setString(1,origin);
	
	stmt.setString(2, destination);
	stmt.setInt(3, dist1);
	stmt.setInt(4, dist2);
	/*stmt.setString(5,totaltime);*/
	
	int seat=seatno-1;
	
	
	stmt.setInt(1,seat); 
	stmt.setInt(2, routeid);
	
	
	
	/* stmt.setFloat(8,price); */
	int status=stmt.executeUpdate();
	

	
	if(status>0)
	{
		out.print("<b><font color='green'>bus booked successfully</font></b>");
		RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
		rd.forward(request,response);
		
	}
	else{
		out.print("<b><font color='red'>Registration fails.. </font></b>");
		RequestDispatcher rd=request.getRequestDispatcher("update.jsp");
		rd.include(request,response);
		
	}
	
}catch(Exception e){e.printStackTrace();}



%>
</body>
</html>