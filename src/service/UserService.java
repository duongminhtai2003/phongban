package service;

import bean.User;
import dao.CheckLoginDao;

public class UserService {
	private CheckLoginDao checkLoginDao = new CheckLoginDao();

	public UserService() {
		super();
	}

	public User getUserFromDB(User user) {
		return checkLoginDao.getUserFromDB(user);
	}

}
