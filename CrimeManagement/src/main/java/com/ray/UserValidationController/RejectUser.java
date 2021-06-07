package com.ray.UserValidationController;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RejectUser
 */
@WebServlet("/RejectUser")
public class RejectUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RejectUser() {
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
		String id = (String) request.getParameter("clickid");
		//System.out.println(id);
		String driverName = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String dbName = "crimemanagement";
		String userId = "root";
		String password = "qwerrewq12";

		try {
		Class.forName(driverName);
		} catch (ClassNotFoundException e) {
		e.printStackTrace();
		}

		Connection connection = null;
		PreparedStatement statement = null;

		try{ 
		
		connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
		statement=connection.prepareStatement("update user set status= ? where id_card_no = ?");
		statement.setString(1, "Rejected");
		statement.setString(2, id);


		statement.executeUpdate();

		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		response.sendRedirect("/CrimeManagement/user-validation.jsp");
	
	}

}
