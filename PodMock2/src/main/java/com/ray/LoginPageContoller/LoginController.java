package com.ray.LoginPageContoller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ray.ComplaintController.Mail;
import com.ray.Connection.JdbcConnection;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();  
		
		String email=request.getParameter("emailid");
		String password=request.getParameter("password");

		JdbcConnection conn=new JdbcConnection();
		Connection con=conn.Connect();
		
		int count=0;
		
		try{
		    PreparedStatement ps1=con.prepareStatement("select * from user where email=? and password=md5(?)");
		    ps1.setString(1, email);
		    ps1.setString(2, password);
		    ResultSet rs=ps1.executeQuery();
		   
		    if(rs.next()) {
		    	String name = rs.getString(1);
		    	System.out.println("Sucessfully Login");
		    	HttpSession session=request.getSession();
		    	System.out.println("logged in");
		    	PreparedStatement ps3=con.prepareStatement("select count from login where email=?");
			    ps3.setString(1, email);
			    ResultSet rs3=ps3.executeQuery();
			    if(rs3.next()) {
			    	 System.out.print("updated1");
			    	count=rs3.getInt(1);
			    	count=count+1;
			    	
			    	PreparedStatement ps2=con.prepareStatement("UPDATE login SET last_login_time=CURRENT_TIMESTAMP, count = " + count + " WHERE email=?");
				    ps2.setString(1, email);

				    ps2.executeUpdate();
				    System.out.print("updated");
				    request.setAttribute("name",name);
				    request.setAttribute("email",email);
					response.setContentType("text/html");
					RequestDispatcher rd=request.getRequestDispatcher("/complaint.jsp");
					rd.forward(request, response);
			    }
			    
			    
		    	
		    }
		    else {
		    	request.setAttribute("Login", "Your Email Id or password is incorrect");
				response.setContentType("text/html");
	}

			}catch (Exception e) {
				// TODO: handle exception
				
			}
		RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
		rd.forward(request, response);
		}
}
