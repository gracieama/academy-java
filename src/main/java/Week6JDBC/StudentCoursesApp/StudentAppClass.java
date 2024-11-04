package Week6JDBC.StudentCoursesApp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class StudentAppClass {
	// These lines establish the variables we need to connect to our Postgres
	// database. Note that we have our username, password, the name of the database,
	// the port, and the URL. If any of these variables has changed in your project
	// (e.g., you changed your password or provided a different port name), make
	// sure you change them below. Failure to do so will result in errors:
	private static final String userName = "postgres";
	private static final String password = "pg123";
	private static final String dbName = "bptn";
	private static final String port = "5432";
	private static final String dbUrl = "localhost";

	// Finally, we can start our connection.
	public Connection createConnection() {
		Connection conn = null;
		try {
			// These lines load the postgresql driver, then initialize it with the variables
			// we defined above:
			// Class.forName("org.postgresql.Driver");
			conn = DriverManager.getConnection("jdbc:postgresql://" + dbUrl + ":" + port + "/" + dbName, userName,
					password);
		} catch (Exception e) {
			System.out.println(e.getClass().getName() + ": " + e.getMessage());
			System.exit(0);
		}
		System.out.println("Opened database successfully");
		return conn;
	}

	// Here, we define a function that will make use of the connection we've created
	// above:
	public void getAllStudents(Connection conn) {
		try {
			Statement stmt = null;
			stmt = conn.createStatement();
			// This line creates our SQL statement to select all entries from the student
			// table:
			String sql = "SELECT * FROM students";
			// This line executes the query in the line above, setting its results to a
			// ResultSet object called rs:
			ResultSet rs = stmt.executeQuery(sql);
			// While there is data in the returned result set, we will print that line to
			// the console:
			while (rs.next()) {
				// Retrieve by column name
				System.out.print("Student ID: " + rs.getInt("studentId"));
				System.out.print(", Course ID: " + rs.getInt("courseId"));
				System.out.print(", Student Name: " + rs.getString("studentName"));
				System.out.print(", Student Email: " + rs.getString("studentEmail"));
				System.out.println(", Student Phone: " + rs.getString("studentPhone"));
			}
			// Here, we close our connection:
			stmt.close();
		} catch (SQLException ex) {
			// And of course, we handle exceptions in case our query is unsuccessful:
			System.out.println("Exception:" + ex.getMessage());
		}
	}

	// Here's another query. Feel free to paste this one into your IDE and annotate
	// it yourself, based on what you saw in the example above:
	public void getStudentById(Connection conn, int studentId) {
		try {
			PreparedStatement stmt = null;
			// Here's our parameterized query:
			String sql = "SELECT * FROM students WHERE \"studentId\" = ?";
			// And here's our prepareStatement method call which is set to use that query:
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, studentId); // 1 specifies the first parameter in the query and replaces the ? on line 5
										// with that data.

			// The following code snippet is fetching data from the ResultSet object, which
			// holds the result of the executed SQL query. It then prints the data for each
			// row retrieved from the database table:
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				// Retrieve by column name
				System.out.print("Student ID: " + rs.getInt("studentId"));
				System.out.print(", Course ID: " + rs.getInt("courseId"));
				System.out.print(", Student Name: " + rs.getString("studentName"));
				System.out.print(", Student Email: " + rs.getString("studentEmail"));
				System.out.println(", Student Phone: " + rs.getString("studentPhone"));
			}
			stmt.close();
		} catch (SQLException ex) {
			// Handle exceptions in case of errors:
			System.out.println("Exception:" + ex.getMessage());
		}
	}

	// Here's an INSERT statement using the JDBC. Try to annotate this one as well,
	// then compare notes with your team:
	// The addStudent method allows you to insert a new student record into the
	// "students" table by providing the required parameters: courseId, studentName,
	// studentEmail, and studentPhone.

	// The SQL query is parameterized to prevent SQL injection attacks, and the
	// method gracefully handles any database-related exceptions that may occur
	// during the execution.

	public void addStudent(Connection conn, int courseId, String studentName, String studentEmail, String studentPhone) {
	  try {
	    PreparedStatement stmt = null;
		String sql = "INSERT INTO students (\"courseId\", \"studentName\", \"studentEmail\", \"studentPhone\") VALUES (?, ?, ?, ?)";
	    stmt = conn.prepareStatement(sql);
	    stmt.setInt(1, courseId);
	    stmt.setString(2, studentName);
	    stmt.setString(3, studentEmail);
	    stmt.setString(4, studentPhone);
	    int resultCount = stmt.executeUpdate();
	    System.out.println(resultCount + " record(s) inserted");
	    stmt.close();
	  } catch (SQLException ex) {
	    System.out.println("Exception:" + ex.getMessage());
	  }
	}

	// This code can be called upon to close our connections. To see it in use,
	// check the Main.java file below:
	public boolean closeConnection(Connection conn) {
		boolean flag = true;
		try {
			conn.close();
		} catch (SQLException ex) {
			flag = false;
			// Handle exception, in case of any errors:
			System.out.println("Exception:" + ex.getMessage());
		}
		return flag;
	}
}
