package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {

	public DbConnection() {
	}

	public static Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/phongban?useSSL=false&autoReconnect=true", "root", "");
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return connection;
	}

	public static void main(String[] args) {
		DbConnection coon = new DbConnection();
		System.out.println(coon.getConnection());
	}
}
