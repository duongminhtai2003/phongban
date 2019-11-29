package service;

import java.util.List;

import bean.PhongBan;
import dao.PhongBanDAO;

public class PhongBanService {
	private PhongBanDAO PhongBanDAO = new PhongBanDAO();

	public List<PhongBan> getItems() {
		return PhongBanDAO.getItems();
	}
}
