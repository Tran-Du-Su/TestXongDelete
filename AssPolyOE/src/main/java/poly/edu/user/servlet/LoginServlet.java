package poly.edu.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import org.apache.commons.beanutils.BeanUtils;

import poly.edu.common.SessionUtils;
import poly.edu.dao.UserDao;
import poly.edu.domain.LoginForm;
import poly.edu.model.User;
import poly.edu.common.CookieUtils;
import poly.edu.common.PageInfo;
import poly.edu.common.PageType;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = CookieUtils.get("username", request);
		
		if (username == null) {
			PageInfo.prepareAddFoward(request, response, PageType.LOGIN_PAGE);
			return;
		}
		SessionUtils.add(request, "username", username);
		
		response.sendRedirect("HomePage");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			LoginForm form = new LoginForm();
			
			BeanUtils.populate(form, request.getParameterMap());
			 
			UserDao dao = new UserDao();
			User user = dao.findById(form.getUsername());
			
			if (user != null && user.getPassword().equals(form.getPassword())) {
				SessionUtils.add(request, "username", user.getUsernameId());
				
				if (form.isRemember()) {
					CookieUtils.add("username", form.getUsername(), 24, response);
				}else {
					CookieUtils.add("username", form.getUsername(), 0, response);
				}
				if (user.isAdmin()) {
					getServletContext().setAttribute("checkRole", "Admin");
				}else {
					getServletContext().setAttribute("checkRole", "User");
				}
				request.setAttribute("isLogin", true);
				request.setAttribute("roleDisplay", user.isAdmin());
				request.setAttribute("nameDisplay", user.getFullname());
				HomePageServlet homePageServlet = new HomePageServlet();
				homePageServlet.doGet(request, response);
				return;
			}
			request.setAttribute("error", "Username or Password invalid!");
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		PageInfo.prepareAddFoward(request, response, PageType.LOGIN_PAGE);
	}

}
