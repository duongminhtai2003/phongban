package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

import bean.NhanVien;
import bean.PhongBan;
import jdbc.DbConnection;

public class NhanVienDAO {
	private Connection conn;
	private Statement st;
	private PreparedStatement pst;
	private ResultSet rs;

	public List<NhanVien> getItems() {
		conn = (Connection) DbConnection.getConnection();
		List<NhanVien> listItems = new ArrayList<NhanVien>();
		String sql = "SELECT nv.id, nv.name AS tenNhanVien, nv.address, nv.birthday, nv.phonenumber, nv.id_pb, pb.name AS tenPhongBan FROM nhanvien AS nv INNER JOIN phongban AS pb ON nv.id_pb = pb.id";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				NhanVien nhanVien = new NhanVien(rs.getString("id"), rs.getString("tenNhanVien"),
						rs.getString("address"), rs.getString("birthday"),
						new PhongBan(rs.getString("id_pb"), rs.getString("tenPhongBan")), rs.getString("phonenumber"));
				listItems.add(nhanVien);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listItems;
	}

	public int addItem(NhanVien nhanVien) {
		conn = (Connection) DbConnection.getConnection();
		int check = 0;
		try {
			String sql = "INSERT INTO nhanvien(id, name, address, birthday, id_pb, phonenumber) VALUES (?,?,?,?,?,?)";

			pst = conn.prepareStatement(sql);
			pst.setString(1, nhanVien.getId());
			pst.setString(2, nhanVien.getName());
			pst.setString(3, nhanVien.getAddress());
			pst.setString(4, nhanVien.getBirthday());
			pst.setString(5, nhanVien.getPhongban().getId());
			pst.setString(6, nhanVien.getPhonenumber());
			check = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return check;
	}

	public static void main(String[] args) {
		NhanVienDAO dao = new NhanVienDAO();
		for (NhanVien nv : dao.getItems()) {
			System.out.println(nv);
		}
	}
}
