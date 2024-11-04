package Week6JDBC.weatherApp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class WeatherAppUserInsertion {

	private static final String userName = "doadmin";
	private static final String password = "";
	private static final String dbName = "weatherDB";
	private static final String port = "25060";
	private static final String dbUrl = "academydb-c6-s3-t9-do-user-12484302-0.f.db.ondigitalocean.com";

	public Connection createConnection() {
		Connection conn = null;
		try {
			Class.forName("org.postgresql.Driver");
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
		} catch (SQLException ex) {
			// handle exception
			System.out.println("Exception:" + ex.getMessage());
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
