package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;

@WebServlet("/help")
public class HelpController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public HelpController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userInfo = (User) session.getAttribute("userInfo");
		if (userInfo != null) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/help/tro-giup-chuong-trinh.jsp");
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
