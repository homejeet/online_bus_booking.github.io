<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="save.jsp">

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<% 
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/company";
String user="root";
String password="1234";
String qry="select * from route where origin=? and destination=?";
try{
	Class.forName(driver);
	Connection con=(Connection) DriverManager.getConnection(url,user,password);
	PreparedStatement stmt=(PreparedStatement) con.prepareStatement(qry);
	 stmt.setString(1, request.getParameter("route1"));
	stmt.setString(2, request.getParameter("routes")); 
	
	ResultSet rs=(ResultSet) stmt.executeQuery();
	boolean status=false;	
	if(rs.next())	
	{
		
		
	}
	status=true;
	
	out.print("<font color='blue'><h1>your route is from:'"+rs.getString(2)+"'  >>  '"+rs.getString(3)+"' </h1></font>"+"<br><br>");
	out.print("<table >");
	out.print("<tr >");
	out.print("<th>");
	out.print("ROUTE ID");
	out.print("</th >");
	out.print("<th >");
	out.print("FROM");
	out.print("</th >");
	out.print("<th >");
	out.print("TO");
	out.print("</th >");
	out.print("<th >");
	out.print("Initial distance");
	out.print("</th >");
	out.print("<th >");
	out.print("Final distance");
	out.print("</th >");
	out.print("<th >");
	out.print("TotalTime");
	out.print("</th >");
	out.print("<th >");
	out.print("seats available");
	out.print("</th >");
	out.print("</tr>");
	out.print("<tr >");
	out.print("<td>'"+rs.getInt(1)+"' </td>");
	out.print("<td>'"+rs.getString(2)+"' </td>");
	out.print("<td>'"+rs.getString(3)+"' </td>");
	out.print("<td>'"+rs.getInt(4)+"Km"+"' </td>");
	out.print("<td>'"+rs.getInt(5)+"Km"+"' </td>");
	out.print("<td>'"+rs.getString(6)+"' </td>");
	out.print("<td>'"+rs.getString(7)+"' </td>");
	out.print("<td> <input  type='submit' value='book now'> </td>");
	out.print("</tr >");	
	out.print("</table >");
		
	
	String origin=rs.getString(2);
	String destination=rs.getString(3);
	int dist3=rs.getInt(4);
	int dist4=rs.getInt(5);
	String totaltime=rs.getString(6);
	int seatno=rs.getInt(7);
	int routeid=rs.getInt(1);
	
	application.setAttribute("origin", origin);
	application.setAttribute("destination",destination);
	application.setAttribute("dist1", dist3);
	application.setAttribute("dist2", dist4);
	application.setAttribute("totaltime",totaltime);
	application.setAttribute("seatno", seatno);
	application.setAttribute("routeid", routeid);
	
	
	
	float dist1=rs.getInt(4);
	float dist2=rs.getInt(5);
	float a=2.5f;
	float price=a*dist2-dist1;
	application.setAttribute("price", price);
	out.print("<b> TOTAL FARE: </b>"+"<font color='brown'>"+price+"</font>");
  
	 

	
	
	
	
	if(seatno<1)
	{
		
		/* String name=request.getParameter("name1"); */
		/*  HttpSession session=request.getSession();  
	        session.setAttribute("name2",name);  */
		
	
		out.print("<b><font color='red'> no buses available</font></b>");
		RequestDispatcher rd=request.getRequestDispatcher("index1.jsp");
	rd.forward(request,response);
	
	
	}
    else{
           out.print("<b><font color='green'> bus available </font></b>");		
		RequestDispatcher rd=request.getRequestDispatcher("route.jsp");
		rd.include(request,response);
		
	     }
	
	
}catch(Exception e){e.printStackTrace();}






%>
</form>
</body>
</html>