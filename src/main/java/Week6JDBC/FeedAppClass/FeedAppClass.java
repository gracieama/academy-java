package Week6JDBC.FeedAppClass;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FeedAppClass {
	private static final String userName = "postgres";
	private static final String password = "pg123";
	private static final String dbName = "FeedApp";
	private static final String port = "5432";
	private static final String dbUrl = "localhost";

	public Connection createConnection() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection("jdbc:postgresql://" + dbUrl + ":" + port + "/" + dbName, userName,
					password);
		} catch (Exception e) {
			System.out.println(e.getClass().getName() + ": " + e.getMessage());
			System.exit(0);
		}
		System.out.println("Opened database successfully");
		return conn;
	}

	public void addUser(Connection conn, String firstName, String lastName, String username, String phone,
			String emailId, String password, boolean emailVerified) {
		try {
			PreparedStatement stmt = null;
			String sql = "INSERT INTO \"user\" (\"firstName\", \"lastName\", \"username\", \"phone\", \"emailId\", \"password\", \"emailVerified\", \"createdOn\") VALUES (?, ?, ?, ?, ?, ?, ?, CURRENT_TIMESTAMP)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, firstName); 
			stmt.setString(2, lastName); 
			stmt.setString(3, username); 
			stmt.setString(4, phone);
			stmt.setString(5, emailId);
			stmt.setString(6, password);
			stmt.setBoolean(7, emailVerified);
		    int resultCount = stmt.executeUpdate();
		    System.out.println(resultCount + " record(s) inserted");
			stmt.close();
		}catch (SQLException ex) {
            // handle exception
            System.out.println("Exception:" + ex.getMessage());
		}
	}
	
	public void getAllUsers(Connection conn) {
	     String sql = "SELECT * FROM \"user\"";
    
			try {
				PreparedStatement stmt = conn.prepareStatement(sql);
	        	
				ResultSet rs = stmt.executeQuery();
	            while (rs.next()) {
	                System.out.println("User ID: " + rs.getInt("userId"));
	                System.out.println("First Name: " + rs.getString("firstName"));
	                System.out.println("Last Name: " + rs.getString("lastName"));
	                System.out.println("Username: " + rs.getString("username"));
	                System.out.println("Phone: " + rs.getString("phone"));
	                System.out.println("Email ID: " + rs.getString("emailId"));
	                System.out.println("Password: " + rs.getString("password"));
	                System.out.println("Email Verified: " + rs.getBoolean("emailVerified"));
	                System.out.println("Created On: " + rs.getTimestamp("createdOn"));
	            }

	        } catch (SQLException ex) {
	            System.out.println("Exception: " + ex.getMessage());
	        }
	    }

	public boolean closeConnection(Connection conn) {
		boolean flag = true;
		try {
			conn.close();
		} catch (SQLException ex) {
			flag = false;
			// handle exception
			System.out.println("Exception:" + ex.getMessage());
		}
		return flag;
	}

}
