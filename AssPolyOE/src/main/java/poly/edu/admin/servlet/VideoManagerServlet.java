package poly.edu.admin.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import poly.edu.common.PageInfo;
import poly.edu.common.PageType;
import poly.edu.common.UploadUtils;
import poly.edu.dao.VideoDao;
import poly.edu.model.Video;

/**
 * Servlet implementation class VideoManagerServlet
 */
@MultipartConfig
@WebServlet({
	"/AdminVideoManager",
	"/AdminVideoManagerCreate",
	"/AdminVideoManagerUpdate",
	"/AdminVideoManagerDelete",
	"/AdminVideoManagerEdit",
	"/AdminVideoManagerReset",
	"/AdminVideoManagerFindByKW"
})
public class VideoManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		
		if (url.contains("Edit")) {
			edit(request, response);
			return;
		}
		if (url.contains("Delete")) {
			delete(request, response);
			return;
		}
		if (url.contains("Reset")) {
			reset(request, response);
			return;
		}
		if (url.contains("FindByKW")) {
			findVideoByKeyWord(request, response);
			return;
		}
		if (url.contains("FindByKW")) {
			findVideoByKeyWord(request, response);
			return;
		}
		
		Video video = new Video();
		video.setPoster("assets/images/poster-extra.jpg");
		
		findAll(request, response);
		request.setAttribute("video", video);
		PageInfo.prepareAddFoward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		
		if (url.contains("Create")) {
			insert(request, response);
			return;
		}
		if (url.contains("Update")) {
			update(request, response);
			return;
		}
		if (url.contains("Delete")) {
			delete(request, response);
			return;
		}
		if (url.contains("Reset")) {
			reset(request, response);
			return;
		}
	}
	
	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Video video = new Video();
		try {
			BeanUtils.populate(video, request.getParameterMap());
			video.setPoster("upload/" 
					+ UploadUtils.processUploadField("cover", request, "/upload", video.getVideoId()));
			
			VideoDao dao = new VideoDao();
			dao.insert(video);
			
			request.setAttribute("video", video);
			request.setAttribute("success", "Video has been inserted!");
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		findAll(request, response);
		PageInfo.prepareAddFoward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}
	
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Video video = new Video();
		try {
			BeanUtils.populate(video, request.getParameterMap());
			
			VideoDao dao = new VideoDao();
			Video videoOld = dao.findById(video.getVideoId());
			
			if (request.getPart("cover").getSize() == 0) {
				video.setPoster(videoOld.getPoster());
			}else {
				video.setPoster("uploads/" + 
						UploadUtils.processUploadField("cover", request, "/uploads", video.getVideoId()));
			}
			
			dao.update(video);
			
			request.setAttribute("video", video);
			request.setAttribute("success", "Video has been updated");
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		findAll(request, response);
		PageInfo.prepareAddFoward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}
	
	protected void findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			VideoDao dao = new VideoDao();
			List<Video> list = dao.findAll();
			Long videoTotals = dao.count();
			
			request.removeAttribute("videosFind");
			request.setAttribute("videoCount", videoTotals);
			request.setAttribute("videos", list);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String videoId = request.getParameter("videoId");
		
		if (videoId == null) {
			request.setAttribute("error", "Video id does not exist!");
			PageInfo.prepareAddFoward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
			return;
		}
		
		try {
			VideoDao dao = new VideoDao();
			Video video = dao.findById(videoId);
			
			if (video == null) {
				request.setAttribute("error", "Video does not exist!");
				findAll(request, response);
				PageInfo.prepareAddFoward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
				return;
			}
			dao.delete(videoId);
			
			request.setAttribute("success", "Video has been deleted!");
			request.setAttribute("video", new Video());
			
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		findAll(request, response);
		PageInfo.prepareAddFoward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String videoId = request.getParameter("videoId");
		
		if (videoId == null) {
			request.setAttribute("error", "Video id does not exist!");
			findAll(request, response);
			PageInfo.prepareAddFoward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
			return;
		}
		
		try {
			VideoDao dao = new VideoDao();
			Video video = dao.findById(videoId);
			
			request.setAttribute("readonlyVideo", "readonly");
			request.setAttribute("video", video);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		findAll(request, response);
		PageInfo.prepareAddFoward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}
	
	protected void findVideoByKeyWord(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String key = request.getParameter("videoTitle");
		
		VideoDao dao = new VideoDao();
		List<Video> list = dao.findVideosByKeyWord(key);
		
		if (list.size() == 0 || list == null || key.isEmpty()) {
			findAll(request, response);
			request.setAttribute("error", "Video title does not exist!");
			PageInfo.prepareAddFoward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
			return;
		}
		
		try {
			request.removeAttribute("videos");
			request.setAttribute("videosFind", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}

		PageInfo.prepareAddFoward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}
	
	protected void reset(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Video video = new Video();
		video.setPoster("assets/images/poster-extra.jpg");
		request.setAttribute("video", video);
		findAll(request, response);
		PageInfo.prepareAddFoward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}

}
