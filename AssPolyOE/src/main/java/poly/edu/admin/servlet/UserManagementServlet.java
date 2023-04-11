package poly.edu.admin.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import javassist.expr.NewArray;
import poly.edu.common.PageInfo;
import poly.edu.common.PageType;
import poly.edu.common.SessionUtils;
import poly.edu.dao.UserDao;
import poly.edu.dao.VideoDao;
import poly.edu.model.User;
import poly.edu.model.Video;

/**
 * Servlet implementation class UserManagementServlet
 */
@WebServlet({ 
	"/AdminUserManager",
	"/AdminUserManagerUpdate", 
	"/AdminUserManagerDelete", 
	"/AdminUserManagerEdit",
	"/AdminUserManagerReset",
	"/AdminUserManagerFindUserByKW" 
	})
public class UserManagementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = request.getRequestURL().toString();

		if (url.contains("Edit")) {
			edit(request, response);
			return;
		}
		if (url.contains("Delete")) {
			delete(request, response);
			return;
		}
		if (url.contains("Reset")) {
			reset(request, response);
			return;
		}
		if (url.contains("FindUserByKW")) {
			findUserByKeyWord(request, response);
			return;
		}
		
		findAll(request, response);
		PageInfo.prepareAddFoward(request, response, PageType.USER_MANAGEMENT_PAGE);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		if (url.contains("Update")) {
			update(request, response);
			return;
		}
		if (url.contains("Delete")) {
			delete(request, response);
			return;
		}
		if (url.contains("Reset")) {
			reset(request, response);
			return;
		}
	}
	
	protected void findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			UserDao dao = new UserDao();
			List<User> list = dao.findAll();
			
			Long userCount = dao.count();
			
			request.removeAttribute("usersFind");
			request.setAttribute("userCount", userCount);
			request.setAttribute("users", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = new User();
		try {
			BeanUtils.populate(user, request.getParameterMap());
			
			UserDao dao = new UserDao();
			dao.update(user);
			
			request.setAttribute("user", user);
			request.setAttribute("success", "User has been updated!");
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		findAll(request, response);
		PageInfo.prepareAddFoward(request, response, PageType.USER_MANAGEMENT_PAGE);
	}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("usernameId");
		String username = SessionUtils.getLoginedUsername(request);
		
		if (userId == null) {
			request.setAttribute("error", "Username does not exist!");
			findAll(request, response);
			PageInfo.prepareAddFoward(request, response, PageType.USER_MANAGEMENT_PAGE);
			return;
		}
		
		try {
			UserDao dao = new UserDao();
			User user = dao.findById(userId);
			
			if (user == null) {
				request.setAttribute("error", "User does not exist!");
				findAll(request, response);
				PageInfo.prepareAddFoward(request, response, PageType.USER_MANAGEMENT_PAGE);
				return;
			}
			if (user.getUsernameId().equals(username)) {
				request.setAttribute("error", "You can not delete yourself!");
				findAll(request, response);
				PageInfo.prepareAddFoward(request, response, PageType.USER_MANAGEMENT_PAGE);
				return;
			}
			dao.delete(userId);
			
			request.setAttribute("success", "User has been deleted!");
			request.setAttribute("user", new User());
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		findAll(request, response);
		PageInfo.prepareAddFoward(request, response, PageType.USER_MANAGEMENT_PAGE);
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("usernameId");
		
		if (userId == null) {
			request.setAttribute("error", "Username does not exist!");
			findAll(request, response);
			PageInfo.prepareAddFoward(request, response, PageType.USER_MANAGEMENT_PAGE);
			return;
		}
		
		try {
			UserDao dao = new UserDao();
			User user = dao.findById(userId);
			
			request.setAttribute("user", user);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		findAll(request, response);
		PageInfo.prepareAddFoward(request, response, PageType.USER_MANAGEMENT_PAGE);
	}
	
	protected void findUserByKeyWord(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String key = request.getParameter("keyFullName");
		
		UserDao dao = new UserDao();
		List<User> list = dao.findUsersByKeyWord(key);
		
		if (list.size() == 0 || list == null || key.isEmpty()) {
			findAll(request, response);
			request.setAttribute("error", "User does not exist!");
			PageInfo.prepareAddFoward(request, response, PageType.USER_MANAGEMENT_PAGE);
			return;
		}
		
		try {
			request.removeAttribute("users");
			request.setAttribute("usersFind", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}

		PageInfo.prepareAddFoward(request, response, PageType.USER_MANAGEMENT_PAGE);
	}
	
	protected void reset(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = new User();
		request.setAttribute("user", user);
		findAll(request, response);
		PageInfo.prepareAddFoward(request, response, PageType.USER_MANAGEMENT_PAGE);
	}

}
