package jsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String driver="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/company";
		String user="root";
		String password="1234";
		String qry="select * from passengers where name=? and password=?";
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
			String name1=request.getParameter("name1");
			String password2=request.getParameter("password1");
			String name2=rs.getString(3);
			String name=rs.getString(2);
			String password1=rs.getString(4);
			
			 HttpSession session=request.getSession();  
		         
			if(name1.equals(name)&& password2.equals(password1))
			{
				
				 session.setAttribute("name2",name2);
				
			
				/*out.print("<b><font color='green'> user:"+request.getParameter("name1")+"</font></b>");*/
				RequestDispatcher rd=request.getRequestDispatcher("/index1.jsp");
			rd.forward(request,response);
			
			
			}
            else{
		           out.print("<b><font color='red'>Oops... INCORRECT username or password </font></b>");		
				RequestDispatcher rd=request.getRequestDispatcher("login1.jsp");
				rd.include(request,response);
				
			     }
			
			
		}catch(Exception e){e.printStackTrace();}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		/*HttpSession ses=request.getSession();
		if(type.equals("admin"))
		{
			ses.setAttribute("admin",request.getParameter("name"));
			RequestDispatcher rd=request.getRequestDispatcher("/Admin");
			rd.forward(request,response);
			
		}
		else if(type.equals("customer"))
		{
			ses.setAttribute("customer",request.getParameter("name"));
			RequestDispatcher rd=request.getRequestDispatcher("index1.html");
			rd.include(request,response);
		}*/
		/*else{
	           out.print("<b><font color='red'>Oops... INCORRECT username or password </font></b>");		
			RequestDispatcher rd=request.getRequestDispatcher("Login.html");
			rd.include(request,response);
			
		    }*/
		
		
	}

}
