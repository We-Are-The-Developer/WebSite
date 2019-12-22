package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class ConnectionManager {

	Connection conn;
	Statement stmt;

	public Connection getConn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); // .newInstance();
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/ptech?characterEncoding=UTF-8&serverTimezone=UTC", "root", "1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public void freeConnection() {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {

		}
	}

	public Statement getStatement() {
		try {
			conn = getConn();
			stmt = conn.createStatement();
		} catch (Exception e) {
			System.out.println("exception  " + e);
		}
		return stmt;
	}

	public void freeStatement() {
		try {
			if (stmt != null) {
				stmt.close();
			}
			freeConnection();
		} catch (Exception e) {

		}
	}
}
