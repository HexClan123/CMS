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
@WebServlet("/login_page")
public class login_page extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login_page() {
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
		response.setContentType("text/html");
		String email=request.getParameter("loginID");
		String password=request.getParameter("password");

		HttpSession session = request.getSession();
	//	session.setAttribute("login", " ");
		
		JdbcConnection conn=new JdbcConnection();
		Connection con=conn.Connect();
		
		int count=0;
		if(email.contains("@")) {
			try{
			    PreparedStatement ps1=con.prepareStatement("select * from user where email=? and password=md5(?)");
			    ps1.setString(1, email);
			    ps1.setString(2, password);
			    ResultSet rs=ps1.executeQuery();
			   
			    if(rs.next()) {
			    	String number = rs.getString(4);
			    	
			    	System.out.println("Successfully Login");
			    	//request.setAttribute("number",number);
					
					
					session.setAttribute("mail",email);
					session.setAttribute("number", number);
					response.sendRedirect("/CrimeManagement/verify.jsp");
			    //	RequestDispatcher rd=request.getRequestDispatcher("/verify.jsp");
					//rd.forward(request, response);
					return;
			    }
		
			   else {
			    	request.setAttribute("Login", "Your Email Id or password is incorrect");
			    	
			    	RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
					rd.forward(request, response);
					return;
				//	response.setContentType("text/html");
				//	session.setAttribute("login", "Your Email Id or password is incorrect");
				//	response.sendRedirect("/PodMock2/login2.jsp");
		}

				}catch (Exception e) {
					// TODO: handle exception
				//	session.setAttribute("login", "Your Email Id or password is incorrect");
				//	response.sendRedirect("/PodMock2/login2.jsp");					
				}
			
			}
		
	else {
			
		
		try{
		    PreparedStatement ps1=con.prepareStatement("select * from police where station_id=? and password=md5(?)");
		    ps1.setString(1, email);
		    ps1.setString(2, password);
		    ResultSet rs=ps1.executeQuery();
		   System.out.print("c");
		    if(rs.next()) {
		    	System.out.print("c");
		    	int pincode = rs.getInt(3);
		    //	session.setAttribute("login", "Successfully logged in");
			//	response.sendRedirect("/PodMock2/login2.jsp");
		    //request.setAttribute("Login", "Successfully logged in");
		    	session.setAttribute("pincode", pincode);
				response.sendRedirect("/CrimeManagement/complaints-view.jsp");
				return;

			    }
			    
			    
		    	
		    
		    else {
		    	request.setAttribute("Login", "Id or password is incorrect");
		    	//session.setAttribute("login", "Id or password is incorrect.");
				//response.sendRedirect("/PodMock2/login2.jsp");
				
	}

			}catch (Exception e) {
				// TODO: handle exception
			//	request.setAttribute("Login", "Incorrect");
			//	RequestDispatcher rd=request.getRequestDispatcher("/policelogin.jsp");
			//	rd.forward(request, response);
				//session.setAttribute("login", "Incorrect");
				//response.sendRedirect("/PodMock2/login2.jsp");
				
			}
	
		}
		//session.setAttribute("login", "");
	
		RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
		rd.forward(request, response);
		return;

}
}
