package Week6JDBC.ToDoList;

import java.sql.Connection;

public class Main {

	public static void main(String[] args) {
		ToDoList jdbc = new ToDoList();
		Connection conn = jdbc.createConnection();
		// jdbc.getAllUsers(conn);
		jdbc.getTaskByDate(conn, "2024-10-29");
		
		// jdbc.closeConnection(conn);
	}

}
