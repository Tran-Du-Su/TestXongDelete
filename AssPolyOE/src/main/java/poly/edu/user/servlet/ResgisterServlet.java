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
import poly.edu.dao.UserDao;
import poly.edu.model.User;

/**
 * Servlet implementation class ResgisterServlet
 */
@WebServlet("/Resgister")
public class ResgisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PageInfo.prepareAddFoward(request, response, PageType.REGISTER_PAGE);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = new User();
		try {
			
			BeanUtils.populate(user, request.getParameterMap());
			
			UserDao dao = new UserDao();
			dao.insert(user);
//			request.setAttribute("success", "Register Successfully!");
			PageInfo.prepareAddFoward(request, response, PageType.LOGIN_PAGE);
//			request.getRequestDispatcher("/user/login.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			request.setAttribute("user", user);
			PageInfo.prepareAddFoward(request, response, PageType.REGISTER_PAGE);
		}
	}

}
