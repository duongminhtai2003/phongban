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
import service.PhongBanService;

@WebServlet("/phongban/index")
public class PhongBanIndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PhongBanService PhongBanServices = new PhongBanService();

	public PhongBanIndexController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userInfo = (User) session.getAttribute("userInfo");
		if (userInfo != null) {
			List<PhongBan> listPhongBan = PhongBanServices.getItems();
			request.setAttribute("listPhongBan", listPhongBan);
			RequestDispatcher rd = request.getRequestDispatcher("/views/phongban/index.jsp");
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
