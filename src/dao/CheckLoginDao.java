package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import bean.User;
import jdbc.DbConnection;

public class CheckLoginDao {
	private DbConnection connection = null;
	private Connection conn;
	private Statement st;
	private PreparedStatement ps;
	private ResultSet rs;

	public User getUserFromDB(User user) {
		User userinfo = null;
		conn = connection.getConnection();
		String sql = "SELECT * FROM user WHERE username= ? AND password = ?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			rs = ps.executeQuery();
			if (rs.next()) {
				userinfo = new User(rs.getString("username"), rs.getString("password"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userinfo;
	}
}
