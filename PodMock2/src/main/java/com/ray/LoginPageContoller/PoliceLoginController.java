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
 * Servlet implementation class PoliceLoginController
 */
@WebServlet("/PoliceLoginController")
public class PoliceLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PoliceLoginController() {
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
		
		String email=request.getParameter("loginID");
		String password=request.getParameter("password");

		JdbcConnection conn=new JdbcConnection();
		Connection con=conn.Connect();
		
		int count=0;
		
		try{
		    PreparedStatement ps1=con.prepareStatement("select * from police where station_id=? and password=md5(?)");
		    ps1.setString(1, email);
		    ps1.setString(2, password);
		    ResultSet rs=ps1.executeQuery();
		   System.out.print("c");
		    if(rs.next()) {
		    	System.out.print("c");
				    request.setAttribute("Login","Successfully Logged in.");
					
				    RequestDispatcher rd=request.getRequestDispatcher("/policelogin.jsp");
					rd.forward(request, response);
			    }
			    
			    
		    	
		    
		    else {
		    	request.setAttribute("Login", "Id or password is incorrect");
				response.setContentType("text/html");
	}

			}catch (Exception e) {
				// TODO: handle exception
				request.setAttribute("Login", "Id or password is incorrect");
				RequestDispatcher rd=request.getRequestDispatcher("/policelogin.jsp");
				rd.forward(request, response);
				
			}
		RequestDispatcher rd=request.getRequestDispatcher("/policelogin.jsp");
		rd.forward(request, response);
		}
}
