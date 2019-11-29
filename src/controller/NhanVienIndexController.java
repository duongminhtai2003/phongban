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

@WebServlet("/nhanvien/index")
public class NhanVienIndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NhanVienServices nhanVienServices = new NhanVienServices();

	public NhanVienIndexController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userInfo = (User) session.getAttribute("userInfo");
		if (userInfo != null) {
			List<NhanVien> listNhanVien = nhanVienServices.getItems();
			request.setAttribute("listNhanVien", listNhanVien);
			RequestDispatcher rd = request.getRequestDispatcher("/views/nhanvien/index.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect(request.getContextPath() + "/auth/login");
			return;
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
