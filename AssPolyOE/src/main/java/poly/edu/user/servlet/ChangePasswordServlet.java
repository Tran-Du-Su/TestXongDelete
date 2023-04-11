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
import poly.edu.domain.ChangePasswordForm;
import poly.edu.model.User;

/**
 * Servlet implementation class ChangePasswordServlet
 */
@WebServlet("/ChangePassword")
public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = SessionUtils.getLoginedUsername(request);
		
		if (username == null) {
			PageInfo.prepareAddFoward(request, response, PageType.LOGIN_PAGE);
			return;
		}
		
		request.setAttribute("username", username);
		PageInfo.prepareAddFoward(request, response, PageType.CHANGE_PASSWORD_PAGE);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String username = SessionUtils.getLoginedUsername(request);
			
			ChangePasswordForm form = new ChangePasswordForm();
			BeanUtils.populate(form, request.getParameterMap());
			
			request.setAttribute("username", username);
			
			if (!form.getConfirmPassword().equals(form.getPassword())) {
				request.setAttribute("error", "New password and confirm password are not same!");
			}else {
				UserDao dao = new UserDao();
				dao.changePassword(form.getUsername(), form.getCurrentPassword(), form.getPassword());
				request.setAttribute("success", "Password has been changed!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		PageInfo.prepareAddFoward(request, response, PageType.CHANGE_PASSWORD_PAGE);
	}

}
