package poly.edu.user.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poly.edu.common.EmailUtils;
import poly.edu.common.PageInfo;
import poly.edu.common.PageType;
import poly.edu.common.SessionUtils;
import poly.edu.dao.ShareDao;
import poly.edu.dao.UserDao;
import poly.edu.domain.Email;
import poly.edu.model.Share;
import poly.edu.model.User;
import poly.edu.model.Video;

/**
 * Servlet implementation class ShareVideoServlet
 */
@WebServlet("/ShareVideo")
public class ShareVideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (!SessionUtils.isLogin(request)) {
			response.sendRedirect("Login");
			return;
		}
		
		String videoId = request.getParameter("videoId");
		
		if (videoId == null) {
			response.sendRedirect("HomePage");
			return;
		}
		
		request.setAttribute("videoId", videoId);
		PageInfo.prepareAddFoward(request, response, PageType.SHARE_PAGE);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String emailTo = request.getParameter("email");
		String videoId = request.getParameter("videoId");
		
		
		
		if (videoId == null) {
			request.setAttribute("error", "Video doest not exist!");
		}else {
			Email email = new Email();
			email.setForm("sutdpd05301@fpt.edu.vn");
			email.setFromPassword("kinderheim511");
			email.setTo(emailTo);
			email.setSubject("Share Favorite Video");
			StringBuffer sb = new StringBuffer();
			sb.append("Dear Mr/Ms.").append("<br>");
			sb.append("The video is more interesting and I want to share with you. <br>");
			sb.append("Link video is ").append("<a href='https://www.youtube.com/watch?v=668nUCeBHyY'>").append(videoId).append("</a>").append("<br> <br>");
			sb.append("Best Regards <br>");
			
			
			email.setContent(sb.toString());
			EmailUtils.send(email);
			
			String username = SessionUtils.getLoginedUsername(request);
			User user = new User();
			user.setUsernameId(username);
			
			Video video = new Video();
			video.setVideoId(videoId);
			
			ShareDao dao  = new ShareDao();
			Share share = new Share();
			
			share.setEmails(emailTo);
			share.setShareDate(new Date());
			share.setUser(user);
			share.setVideo(video);
			
			dao.insert(share);
			
			request.setAttribute("success", "Video link has been shared!");
		}
		
	} catch (Exception e) {
		e.printStackTrace();
		request.setAttribute("error", e.getMessage());
	}
	PageInfo.prepareAddFoward(request, response, PageType.SHARE_PAGE);
	}

}
