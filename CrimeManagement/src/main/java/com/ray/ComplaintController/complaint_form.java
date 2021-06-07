package com.ray.ComplaintController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ray.Connection.JdbcConnection;

/**
 * Servlet implementation class complaint_form
 */
@WebServlet("/complaint_form")
public class complaint_form extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public complaint_form() {
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
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();  
		String DateOfComplaint=request.getParameter("Calender");
		String ComplaintType=request.getParameter("complaintType");
		String Address=request.getParameter("address");
		String Complaint=request.getParameter("complaint");
		String MobileNo=request.getParameter("mobilenumber");
		String PinCode=request.getParameter("zip");
		String	Email=request.getParameter("emailid");
		
		HttpSession session = request.getSession();
	//	session.setAttribute("Complaint", " ");

		JdbcConnection conn=new JdbcConnection();
		Connection con=conn.Connect();
		int pinc = Integer.parseInt(PinCode);
		if(pinc!=380005 && pinc!=380007 && pinc!=380015 ) {
			System.out.println("invalid pincode");
			request.setAttribute("Complaint", "Invalid Pincode.");
		//	session.setAttribute("Complaint", "Invalid Pincode.");
			RequestDispatcher rd=request.getRequestDispatcher("/complaint.jsp");
		//	response.sendRedirect("/PodMock2/complaint.jsp");

		}
		else {
		try{
		    PreparedStatement ps = con.prepareStatement("insert into complaints(time_of_occurance,type_of_complaint,place_of_occurance,Description,MobileNo,pincode,Email) values(?,?,?,?,?,?,?);");
		    ps.setString(1,DateOfComplaint);
		    ps.setString(2,ComplaintType);
		    ps.setString(3,Address);
		    ps.setString(4, Complaint);
		    ps.setString(5,MobileNo);
		    ps.setString(6,PinCode);
		    ps.setString(7, Email);
		    int x = ps.executeUpdate();
		    if(x>0) {
					
		    	request.setAttribute("Complaint", "Complaint Registered.");
					
					String	to=request.getParameter("emailid");
					Mail mail=new Mail();
					boolean mail_sent=mail.SendMail(to,PinCode);
		    }
					else{
				//out.println(" Not Registration Sucessfully");
				//session.setAttribute("Complaint", "Complaint not registered.");
						request.setAttribute("Complaint", "Complaint not registered.");
				 
			}
		    
	}catch (Exception e) {
		e.printStackTrace();
	}
		//response.sendRedirect("/PodMock2/complaint.jsp");
		RequestDispatcher rd=request.getRequestDispatcher("/complaint.jsp");
		rd.forward(request, response);
		return;

	}
	}
}


