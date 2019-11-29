package service;

import java.util.List;

import bean.NhanVien;
import dao.NhanVienDAO;

public class NhanVienServices {
	private NhanVienDAO nhanVienDAO = new NhanVienDAO();

	public List<NhanVien> getItems() {
		return nhanVienDAO.getItems();
	}
	
	public int addItem(NhanVien nhanVien) {
		return nhanVienDAO.addItem(nhanVien);
	}
}
