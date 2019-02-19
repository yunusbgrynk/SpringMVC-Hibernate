package com.yunus.test.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;


@WebServlet("/TestDbServlet")
public class TestDbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		//set up connection variables
		
		String user="crform";
		String pass="crf";
		String jdbcUrl="jdbc:mysql://localhost:3306/customer_registration_form?useSSL=false";
		
		//We also need to automatically load our driver since we're running it as a servlet.
		String driver="com.mysql.jdbc.Driver"; 
		
		
		//get connection to database
		try {
			
			PrintWriter out=response.getWriter();
			
			out.println("Connecting to database: "+jdbcUrl);
			
			Class.forName(driver);
			
			Connection myConn=DriverManager.getConnection(jdbcUrl, user, pass);
			
			out.println("Connection Successful...");
			
			myConn.close();
			
			
			
		} catch (Exception exc) {
			exc.printStackTrace();
			
			throw new ServletException(exc);
		}
		
		
		
		
		
		
		
	}

}
