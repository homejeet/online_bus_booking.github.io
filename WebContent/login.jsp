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
<%@page import="java.util.*" import="javax.servlet.http.*"%>

<% 

String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/company";
String user="root";
String password="1234";
String qry="select * from passenger where userid=? and password=?";
try{
	Class.forName(driver);
	Connection con=(Connection) DriverManager.getConnection(url,user,password);
	PreparedStatement stmt=(PreparedStatement) con.prepareStatement(qry);
	stmt.setString(1, request.getParameter("name1"));
	stmt.setString(2, request.getParameter("password1"));
	
	ResultSet rs=(ResultSet) stmt.executeQuery();
	boolean status=false;
	if(rs.next())	
	/*{
		type=rs.getString(5);
		
		
	}*/
		 status=true;
	
	
	     
	/* String password1=request.getParameter("password1"); */
	if(status)
	{
		
		/* String name=request.getParameter("name1"); */
		/*  HttpSession session=request.getSession();  
	        session.setAttribute("name2",name);  */
	       /*  application.setAttribute("name1",userid); */
	       
	
		
		
		 RequestDispatcher rd=request.getRequestDispatcher("/index1.jsp");
		
	rd.forward(request,response);
	
	
	}
    else{
           out.print("<b><font color='red'>Oops... INCORRECT username or password </font></b>");		
		RequestDispatcher rd=request.getRequestDispatcher("login.html");
		rd.include(request,response);
		
	     }
	
	
}catch(Exception e){e.printStackTrace();}

%>
</body>
</html>