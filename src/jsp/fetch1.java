package jsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class fetch1
 */
@WebServlet("/fetch1")
public class fetch1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public fetch1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
	
		String url="jdbc:mysql://localhost:3306/company";
		String user="root";
		String password="1234";
		String qry="select * from busdetails where ticketid=? ";
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection(url,user,password);
			PreparedStatement stmt=con.prepareStatement(qry);
			stmt.setString(1, request.getParameter("ticketid"));
			
			
		  ResultSet rs=stmt.executeQuery();
		  if(rs.next())
		  {
			  
			  
			  out.print("<body background-color='yellow'>");
			  out.print("<h1><font color='red'><center>BHUBANESWAR BUS TRAVELLING SERVICE (ODISHA)</center></font></h1>"+"<br><br>");
			  out.print("<center><img alt='bhubaneswar bus travelling service' src='image/a.jpg' height='100px' width='100px'></center><br><br>");
			  out.print("<center><b><font color='green'>* GET CUSTOMER'S INFORMATIONS ON THIS PAGE *</font></b></center>");
			  
			  out.print("<font color='red'>---  ---- ----  ----  ----  ----  ----  ----  ----  ----  ----  ----  ----  ----  ----  ----  ----  ----  ----   ----  ----  ----  ----  ----  ----  ----  ----  ----  ----  ----  ----  ----  ----  ----  ----  ----  ----  ----  ----</font>"+"<br><br>");
			  out.print("ticket id :"+"<b><font color='blue'>"+rs.getString(1)+"</font></b>"+"<br><br>");
			  out.print("origin :"+"<b><font color='blue'>"+rs.getString(2)+"</font></b>"+"<br><br>");
			  out.print("destination :"+"<b><font color='blue'>"+rs.getString(3)+"</font></b>"+"<br><br>");
			  out.print("distance you boarded to bus  :"+"<b><font color='blue'>"+rs.getString(4)+"</font></b>"+"<br><br>");
			  out.print("distance of your destination :"+"<b><font color='blue'>"+rs.getString(5)+"</font></b>"+"<br><br>");
			  out.print("totaltime:"+"<b><font color='blue'>"+rs.getString(6)+"</font></b>"+"<br><br>");
			  out.print("seatno :"+"<b><font color='blue'>"+rs.getString(7)+"</font></b>"+"<br><br>");
			  out.print("route id:"+"<b><font color='blue'>"+rs.getString(8)+"</font></b>"+"<br><br>");
			  out.print("total fare :"+"<b><font color='blue'>"+rs.getString(9)+"</font></b>"+"<br><br>");
			 /* out.print("BUSROUTE :"+"<b><font color='blue'>"+rs.getString(10)+"</font></b>"+"<br><br>");
			  out.print("BUS TIME :"+"<b><font color='blue'>"+rs.getString(11)+"</font></b>"+"<br><br>");
			  out.print("DAY OF JOURNEY :"+"<b><font color='blue'>"+rs.getString(12)+"</font></b>"+"<br><br>");
			  out.print("TOTAL BUS FARE :"+"<b><font color='blue'>"+rs.getString(13)+"</font></b>"+"<br><br>");*/
			 out.print("</body>");
			  
		  }
		  
		  int s=rs.getInt(1);
		  String data=request.getParameter("ticketid");
		  if(data.equals(s))
			{
			  RequestDispatcher rd=request.getRequestDispatcher("/fetch1");
	             rd.forward(request, response);
	           
			}
		  
		  else 
		  {
			  out.print("<p><font color='red'>Error: An error has been occurred while submitting your data </font></p>");
   			  RequestDispatcher rd=request.getRequestDispatcher("fetch.html");
   	             rd.include(request, response);
		  }
		  
		  
		  
		  }catch(Exception ee){ee.printStackTrace();}
		
			
	}

}
