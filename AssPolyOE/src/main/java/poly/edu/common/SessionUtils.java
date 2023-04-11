package poly.edu.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionUtils {
	//them session
	public static void add(HttpServletRequest request, String name, Object value) {
		HttpSession session = request.getSession();
		session.setAttribute(name, value);
	}
	//lay doi tuong session
	public static Object get(HttpServletRequest request, String name) {
		HttpSession session = request.getSession();

		return session.getAttribute(name);
	}
	
	//Huy Session
	public static void invalidate(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("username");
		session.invalidate();
	}
	
	//kiem tra login 
	public static boolean isLogin(HttpServletRequest request) {
		return get(request, "username") != null;
	}
	
	//lay thong tin login luu vao session
	public static String getLoginedUsername(HttpServletRequest request) {
		Object username = get(request, "username");
		return username == null? null: username.toString();
	}
}
