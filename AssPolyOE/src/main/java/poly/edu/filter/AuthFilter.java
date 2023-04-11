package poly.edu.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poly.edu.common.SessionUtils;
import poly.edu.dao.UserDao;
import poly.edu.model.User;

/**
 * Servlet Filter implementation class AuthFilter
 */
@WebFilter("/*")
public class AuthFilter extends HttpFilter implements Filter {

	@Override
	public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {

		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String pageInfo = request.getParameter("pageinfo");
		if (pageInfo == null) {
			pageInfo = "HomePage";
		}
		String lang = request.getParameter("lang");
		request.setAttribute("pageLG", pageInfo);
		if (lang != null) {
			request.getSession().setAttribute("lang",lang);
		}
		
		request.setAttribute("isLogin", SessionUtils.isLogin(request));
		
		if (SessionUtils.isLogin(request)) {
			String username = SessionUtils.getLoginedUsername(request);
			User user = new UserDao().findById(username);
			
			request.setAttribute("roleDisplay", user.isAdmin());
			request.setAttribute("nameDisplay", user.getFullname());
		}
		
		chain.doFilter(request, response);
	}



}
