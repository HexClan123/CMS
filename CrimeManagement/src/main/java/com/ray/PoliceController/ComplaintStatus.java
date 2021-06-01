package com.ray.PoliceController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ray.Connection.JdbcConnection;

/**
 * Servlet implementation class ComplaintView
 */
@WebServlet("/ComplaintStatus")
public class ComplaintStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComplaintStatus() {
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
		
		System.out.println("inside status page");
			{
				// TODO Auto-generated method stub
				PrintWriter out = response.getWriter();  
				response.setContentType("text/html");
				
				HttpSession session = request.getSession();
				System.out.println("inside status page1");
				int id=(Integer) session.getAttribute("complaintid");
				System.out.println("inside status page4");
				String status=request.getParameter("status");
				String info=request.getParameter("info");
				//System.out.println(info);
				JdbcConnection conn=new JdbcConnection();
				Connection con=conn.Connect();
				System.out.println("inside status page2");
				{
					try{
						System.out.println("inside status page3");
					    PreparedStatement ps1=con.prepareStatement("UPDATE complaints SET last_status_update_time=CURRENT_TIMESTAMP, status_of_complaint = ?, additional_information= ? WHERE complaintId=?");
					    ps1.setInt(3, id);
					    ps1.setString(1, status);
					    ps1.setString(2, info);
					    
					    ps1.executeUpdate();
					    request.setAttribute("result", "Updated");
				    	
				    	RequestDispatcher rd=request.getRequestDispatcher("/complaint-status.jsp");
						rd.forward(request, response);
						return;
					   
					    	//out.print("Updated");
					}catch (Exception e) {
							// TODO: handle exception
							   response.sendRedirect("/complaint-status.jsp");
								return;
						//	session.setAttribute("login", "Your Email Id or password is incorrect");
						//	response.sendRedirect("/PodMock2/login2.jsp");					
						}
					
					}
				
		
		}

	}

}
