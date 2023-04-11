package poly.edu.user.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import poly.edu.common.PageInfo;
import poly.edu.common.PageType;
import poly.edu.common.SessionUtils;
import poly.edu.dao.FavoriteDao;
import poly.edu.dao.VideoDao;
import poly.edu.model.Favorite;
import poly.edu.model.User;
import poly.edu.model.Video;

/**
 * Servlet implementation class LikeVideoServlet
 */
@WebServlet("/LikeVideo")
public class LikeVideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (!SessionUtils.isLogin(request)) {
			response.sendRedirect("Login");
			return;
		}
		
		String page = request.getParameter("page");
		String videoId = request.getParameter("videoId");
		
		if (videoId == null) {
			response.sendRedirect("HomePage");
			return;
		}
		
		
			String username = SessionUtils.getLoginedUsername(request);
			
			FavoriteDao dao = new FavoriteDao();
			Favorite favorite = dao.checkVideoLiked(username, videoId);
			
			if (favorite != null) {
				System.out.println(page);
				request.setAttribute("info", "You liked this video. Please choose another videos!");
				new ListVideoServlet().doGet(request, response);
				return;
			}
			
		try {
			favorite = new Favorite();
			Video video = new Video();
			video.setVideoId(videoId);
			
			
			User user = new User();
			user.setUsernameId(username);
			
			favorite.setUser(user);
			favorite.setVideo(video);
			favorite.setLikeDate(new Date());
			
			dao.insert(favorite);
			
			
			request.setAttribute("success", "Video has been added to Favorite!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
//		if (page.equals("ListVideo")) {
//			System.out.println(page);
//			new ListVideoServlet().doGet(request, response);
//			return;
//		}
//		new HomePageServlet().doGet(request, response);
//		System.out.println(page);
////		new ListVideoServlet().doGet(request, response);
		new ListVideoServlet().doGet(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
