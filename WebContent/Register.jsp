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
<%@page import="java.util.*" %>
<%
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/company";
String user="root";
String password="1234";
String qry="insert into passenger(userid,name,password,sex,mobile,age,email,address) values(?,?,?,?,?,?,?,?)";
try{
	
	String userid= request.getParameter("userid");
	String name= request.getParameter("name");
	String password1= request.getParameter("password");
	String sex= request.getParameter("sex");
	String mobileno=request.getParameter("mobileno");
	String age=request.getParameter("age");
	String email= request.getParameter("email");
	String address= request.getParameter("address");
	
	application.setAttribute("mail", email);
	application.setAttribute("mobile", mobileno);
	
	Class.forName(driver);
	Connection con=(Connection) DriverManager.getConnection(url,user,password);
	PreparedStatement stmt=(PreparedStatement) con.prepareStatement(qry);
	stmt.setString(1,userid);
	stmt.setString(2, name);
	stmt.setString(3, password1);
	stmt.setString(4, sex);
	stmt.setString(5,mobileno);
	stmt.setString(6, age);
	stmt.setString(7, email);
	stmt.setString(8,address);
	int status=stmt.executeUpdate();
	
	
	if(status>0)
	{
		out.print("<b><font color='red'>Registered Successfully....</font></b>");
		RequestDispatcher rd=request.getRequestDispatcher("/Login.html");
		rd.forward(request,response);
		
	}
	else{
		out.print("<b><font color='red'>Registration fails.. </font></b>");
		RequestDispatcher rd=request.getRequestDispatcher("Register.html");
		rd.include(request,response);
		
	}
	
}catch(Exception e){e.printStackTrace();}

%>
</body>
</html>