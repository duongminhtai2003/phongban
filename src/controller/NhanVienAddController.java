package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.NhanVien;
import bean.PhongBan;
import bean.User;
import service.NhanVienServices;
import service.PhongBanService;

@WebServlet("/nhanvien/add")
public class NhanVienAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PhongBanService PhongBanServices = new PhongBanService();
	private NhanVienServices nhanVienServices = new NhanVienServices();

	public NhanVienAddController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userInfo = (User) session.getAttribute("userInfo");
		if (userInfo != null) {
			List<PhongBan> listPhongBan = PhongBanServices.getItems();
			request.setAttribute("listPhongBan", listPhongBan);
			RequestDispatcher rd = request.getRequestDispatcher("/views/nhanvien/add.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect(request.getContextPath() + "/auth/login");
			return;
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String birthday = request.getParameter("birthday");
		String phonenumber = request.getParameter("phonenumber");
		String id_phongban = request.getParameter("id_pb");
		NhanVien nhanVien = new NhanVien(id, name, address, birthday, new PhongBan(id_phongban, ""), phonenumber);
		int check = nhanVienServices.addItem(nhanVien);
		if (check > 0) {
			response.sendRedirect(request.getContextPath() + "/nhanvien/index?msg=addsuccess");
			return;
		} else {
			response.sendRedirect(request.getContextPath() + "/nhanvien/add?msg=addfail");
			return;
		}
	}

}
