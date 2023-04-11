package poly.edu.common;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.map.HashedMap;

public class PageInfo {
	public static Map<PageType, PageInfo> pageRoute = new HashedMap();
	
	static {
		//ADMIN
		pageRoute.put(PageType.USER_MANAGEMENT_PAGE, new PageInfo("User Management", "/admin/users.jsp", null));
		pageRoute.put(PageType.VIDEO_MANAGEMENT_PAGE, new PageInfo("Video Management", "/admin/videos.jsp", null));
		pageRoute.put(PageType.REPORT_MANAGEMENT_PAGE, new PageInfo("Report Management", "/admin/reports.jsp", null));
		
		//USER
		pageRoute.put(PageType.LOGIN_PAGE, new PageInfo("Login", "/user/login.jsp", null));
		pageRoute.put(PageType.REGISTER_PAGE, new PageInfo("Register", "/user/register.jsp", null));
		pageRoute.put(PageType.CHANGE_PASSWORD_PAGE, new PageInfo("Change Passwoed", "/user/change_password.jsp", null));
		pageRoute.put(PageType.FORGOT_PASSWORD_PAGE, new PageInfo("Forgot Password", "/user/forgot_password.jsp", null));
		pageRoute.put(PageType.EDIT_PROFILE_PAGE, new PageInfo("Edit Profile", "/user/edit_profile.jsp", null));
		
		//COMPONENT
		pageRoute.put(PageType.HOME_PAGE, new PageInfo("Home", "/component/home.jsp", null));
		pageRoute.put(PageType.ABOUT_PAGE, new PageInfo("About Us", "/component/about.jsp", null));
		pageRoute.put(PageType.CONTACT_PAGE, new PageInfo("Contact", "/component/contact.jsp", null));
		
		//VIDEO
		pageRoute.put(PageType.FAVOTITE_PAGE, new PageInfo("Favotite", "/video/favorite.jsp", null));
		pageRoute.put(PageType.SHARE_PAGE, new PageInfo("Share", "/video/share.jsp", null));
		pageRoute.put(PageType.DETAIL_PAGE, new PageInfo("Detail", "/video/detail.jsp", null));
		pageRoute.put(PageType.VIDEO_PAGE, new PageInfo("Videos", "/video/videos.jsp", null));
	}
	
	public static void prepareAddFoward(HttpServletRequest request, HttpServletResponse response, PageType pageType) 
			throws ServletException, IOException {
		PageInfo page = pageRoute.get(pageType);
		
		request.setAttribute("page", page);
		request.getRequestDispatcher("/sites/layout.jsp").forward(request, response);
	}
	
	private String title;
	private String contentURL;
	private String scriptURL;
	
	public PageInfo(String title, String contentURL, String scriptURL) {
		super();
		this.title = title;
		this.contentURL = contentURL;
		this.scriptURL = scriptURL;
	}

	public static Map<PageType, PageInfo> getPageRoute() {
		return pageRoute;
	}

	public static void setPageRoute(Map<PageType, PageInfo> pageRoute) {
		PageInfo.pageRoute = pageRoute;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContentURL() {
		return contentURL;
	}

	public void setContentURL(String contentURL) {
		this.contentURL = contentURL;
	}

	public String getScriptURL() {
		return scriptURL;
	}

	public void setScriptURL(String scriptURL) {
		this.scriptURL = scriptURL;
	}
	
	
}
