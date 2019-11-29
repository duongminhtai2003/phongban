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
import service.NhanVienServices;
import service.UserService;

@WebServlet("/auth/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService = new UserService();

	public LoginController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/auth/login.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = new User(username, password);
		User userInfo = userService.getUserFromDB(user);
		if(userInfo != null) {
			session.setAttribute("userInfo", userInfo);
			response.sendRedirect(request.getContextPath() + "/index");
			return;
		}else {
			response.sendRedirect(request.getContextPath() + "/auth/login?msg=loginError");
			return;
		}
	}
}
