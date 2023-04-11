package poly.edu.user.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poly.edu.common.PageInfo;
import poly.edu.common.PageType;
import poly.edu.common.SessionUtils;
import poly.edu.dao.FavoriteDao;
import poly.edu.model.Video;

/**
 * Servlet implementation class FavoriteServlet
 */
@WebServlet("/Favorite")
public class FavoriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (!SessionUtils.isLogin(request)) {
			response.sendRedirect("Login");
			return;
		}
		
		String userId = SessionUtils.getLoginedUsername(request);
		
		FavoriteDao dao = new FavoriteDao();
		List<Video> list = dao.displayVideoByUserId(userId);
		
		request.setAttribute("favoriteVideos", list);
		PageInfo.prepareAddFoward(request, response, PageType.FAVOTITE_PAGE);
		
//		String videoIdFavorite = request.getParameter("videoIdFavorite");
//		if (videoIdFavorite == null) {
//			request.setAttribute("error", "Video doest not exist!");
//		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
