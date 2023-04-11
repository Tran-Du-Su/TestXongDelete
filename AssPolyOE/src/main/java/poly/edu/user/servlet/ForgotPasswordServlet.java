package poly.edu.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poly.edu.common.EmailUtils;
import poly.edu.common.PageInfo;
import poly.edu.common.PageType;
import poly.edu.dao.UserDao;
import poly.edu.domain.Email;
import poly.edu.model.User;

/**
 * Servlet implementation class ForgotPasswordServlet
 */
@WebServlet("/ForgotPassword")
public class ForgotPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PageInfo.prepareAddFoward(request, response, PageType.FORGOT_PASSWORD_PAGE);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String emailTo = request.getParameter("email");
			String username = request.getParameter("username");
			
			UserDao dao = new UserDao();
			User user = dao.findUserByIdAndEmail(username, emailTo);
			
			if (user == null) {
				request.setAttribute("error", "Username or Email are Incorect!");
			}else {
				Email email = new Email();
				email.setForm("sutdpd05301@fpt.edu.vn");
				email.setFromPassword("kinderheim511");
				email.setTo(emailTo);
				email.setSubject("Forgot Password Function");
				StringBuffer sb = new StringBuffer();
				sb.append("Dear ").append(username).append("<br>");
				sb.append("You used the forgot password function. <br>");
				sb.append("Your password is <b>").append(user.getPassword()).append("<b>").append("<br> <br>");
				sb.append("Best Regards <br>");
				sb.append("Adminstrator");
				
				
				email.setContent(sb.toString());
				EmailUtils.send(email);
				
				request.setAttribute("success", "Password has been sent to the Email address. Please check your email and get your password!");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		PageInfo.prepareAddFoward(request, response, PageType.FORGOT_PASSWORD_PAGE);
	}

}
