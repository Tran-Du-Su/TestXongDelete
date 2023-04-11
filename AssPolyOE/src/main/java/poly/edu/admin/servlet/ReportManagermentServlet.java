package poly.edu.admin.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import antlr.CharQueue;
import poly.edu.common.PageInfo;
import poly.edu.common.PageType;
import poly.edu.dao.FavoriteDao;
import poly.edu.dao.VideoDao;
import poly.edu.domain.FavoriteReport;
import poly.edu.domain.FavoriteUserReport;
import poly.edu.domain.ShareVideoReport;
import poly.edu.model.Video;

/**
 * Servlet implementation class ReportManagermentServlet
 */
@WebServlet("/ReportManagerment")
public class ReportManagermentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reportFavoriteByVideo(request, response);
		reportFavoriteUsersByVideo(request, response);
		reportShareByVideo(request, response);
		
		PageInfo.prepareAddFoward(request, response, PageType.REPORT_MANAGEMENT_PAGE);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
	protected void reportFavoriteByVideo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			FavoriteDao dao = new FavoriteDao();
			List<FavoriteReport> list = dao.reportFavoriteByVideos();
			
			request.setAttribute("favoriteList", list);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
	}
	
	protected void reportFavoriteUsersByVideo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String videoUserId = request.getParameter("videoIdRp");
			
			VideoDao vDao = new VideoDao();
			List<Video> vList = vDao.findAll();
			
			if (videoUserId == null && vList.size() > 0) {
				videoUserId = vList.get(0).getVideoId();
			}
			
			FavoriteDao dao = new FavoriteDao();
			List<FavoriteUserReport> list = dao.reportFavoriteUserByVideo(videoUserId);
			                                                                                                   
			request.setAttribute("videoUserId", videoUserId);
			request.setAttribute("videoList", vList);
			request.setAttribute("favoriteUserList", list);
			System.out.println(list.get(0).getFullname());
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
	}
	
	protected void reportShareByVideo(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		try {
			String videoId = request.getParameter("videoId");
			
			VideoDao vDao = new VideoDao();
			List<Video> vList = vDao.findAll();
			
			if (videoId == null && vList.size() > 0) {
				videoId = vList.get(0).getVideoId();
			}
			
			FavoriteDao dao = new FavoriteDao();
			List<ShareVideoReport> list = dao.reportShareVideoByVideo(videoId);
			                                                                                                   
			request.setAttribute("videoShareId", videoId);
			request.setAttribute("videoShareList", vList);
			request.setAttribute("shareList", list);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
	}

}
