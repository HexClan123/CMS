package com.ray.Connection;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

public class JdbcConnection  {
	public   Connection Connect(){
		Connection con=null;
		try {
				Driver d=new com.mysql.cj.jdbc.Driver();
				DriverManager.registerDriver(d);   // Load a Driver
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crimemanagement","root","qwerrewq12");
			    ///System.out.print("Connected");
			}catch (Exception e) {
				e.printStackTrace();
			}
		return con;

		}

	}
