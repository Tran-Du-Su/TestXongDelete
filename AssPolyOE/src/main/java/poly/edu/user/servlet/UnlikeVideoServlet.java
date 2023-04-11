package poly.edu.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poly.edu.common.PageInfo;
import poly.edu.common.PageType;
import poly.edu.common.SessionUtils;
import poly.edu.dao.FavoriteDao;

/**
 * Servlet implementation class UnlikeVideoServlet
 */
@WebServlet("/UnlikeVideo")
public class UnlikeVideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userIdFavorite = SessionUtils.getLoginedUsername(request);
		String videoIdFavotite = request.getParameter("videoId");
		
		if (videoIdFavotite == null) {
			response.sendRedirect("Favorite");
			return;
		}
		
		try {
			FavoriteDao dao = new FavoriteDao();
			dao.unlikeVideo(userIdFavorite, videoIdFavotite);
			
			request.setAttribute("success", "Video has been unliked from your favorite page!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		FavoriteServlet favoriteServlet = new FavoriteServlet();
		favoriteServlet.doGet(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
