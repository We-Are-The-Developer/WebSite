package connect;
import java.sql.Statement;

import com.mysql.cj.protocol.Resultset;
import com.sun.corba.se.pept.transport.Connection;

public class ConnectionManager {
	private Connection con;
	private Statement st;
	private Resultset rs;
	
	
	public void DBConnect() {
		try {
			Class.forName("com.mysql.cj.jdbc.Drivaer");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
