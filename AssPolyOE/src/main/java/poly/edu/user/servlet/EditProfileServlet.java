package poly.edu.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import poly.edu.common.PageInfo;
import poly.edu.common.PageType;
import poly.edu.common.SessionUtils;
import poly.edu.dao.UserDao;
import poly.edu.model.User;

/**
 * Servlet implementation class EdirProfileServlet
 */
@WebServlet("/EditProfile")
public class EditProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = SessionUtils.getLoginedUsername(request);
		
		if (username == null) {
			PageInfo.prepareAddFoward(request, response, PageType.LOGIN_PAGE);
			return;
		}
		
		try {
			UserDao dao = new UserDao();
			User user = dao.findById(username);
			
			request.setAttribute("user", user);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		PageInfo.prepareAddFoward(request, response, PageType.EDIT_PROFILE_PAGE);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			User user = new User();
		try {
			
			BeanUtils.populate(user, request.getParameterMap());
			
			String username = SessionUtils.getLoginedUsername(request);
			UserDao dao = new UserDao();
			User olduser = dao.findById(username);
			
			user.setAdmin(olduser.isAdmin());
			dao.update(user);
			
			request.setAttribute("success", "Information updated!");
			request.setAttribute("user", user);
			PageInfo.prepareAddFoward(request, response, PageType.EDIT_PROFILE_PAGE);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			request.setAttribute("user", user);
			PageInfo.prepareAddFoward(request, response, PageType.EDIT_PROFILE_PAGE);
		}
	}

}
