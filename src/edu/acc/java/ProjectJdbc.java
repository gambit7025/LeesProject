package edu.acc.java;

import java.sql.*; 


public class ProjectJdbc {

	public static void main(String[] args) {
		
		try {
			//connection 
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectschema","root", "Truth01!"); 
			//statement 
			Statement myStmt = myConn.createStatement();
			//execute query 
			ResultSet myRs = myStmt.executeQuery("select * from movietable"); 
			//process result set 
			while (myRs.next()) {
				System.out.println(myRs.getString("title") + "," + myRs.getString("year"));
			}
			
		}
		catch (Exception exc) {
			exc.printStackTrace();
		}
	}

	}


