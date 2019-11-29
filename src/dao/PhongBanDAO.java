package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

import bean.PhongBan;
import jdbc.DbConnection;

public class PhongBanDAO {
	private Connection conn;
	private Statement st;
	private PreparedStatement pst;
	private ResultSet rs;

	public List<PhongBan> getItems() {
		conn = (Connection) DbConnection.getConnection();
		List<PhongBan> listItems = new ArrayList<PhongBan>();
		String sql = "SELECT id, name FROM phongban";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				PhongBan PhongBan = new PhongBan(rs.getString("id"), rs.getString("name"));
				listItems.add(PhongBan);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listItems;
	}

	public static void main(String[] args) {
		PhongBanDAO dao = new PhongBanDAO();
		for (PhongBan pb : dao.getItems()) {
			System.out.println(pb);
		}
	}
}
