package poly.edu.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.StoredProcedureQuery;
import javax.persistence.TypedQuery;

import org.hibernate.Transaction;

import net.bytebuddy.matcher.CollectionItemMatcher;
import poly.edu.domain.FavoriteReport;
import poly.edu.domain.FavoriteUserReport;
import poly.edu.domain.ShareVideoReport;
import poly.edu.model.Favorite;
import poly.edu.model.Video;

public class FavoriteDao extends AbstractEntityDao<Favorite>{

	public FavoriteDao() {
		super(Favorite.class);
	}
	
	//Report Favorite Video
	public List<FavoriteReport> reportFavoriteByVideos() {
		String jpql = "select new poly.edu.domain.FavoriteReport("
				+ "f.video.title, count(f), min(f.likeDate), max(f.likeDate)) "
				+ "from Favorite f group by f.video.title order by count(f) desc";
		
		EntityManager em = JpaUtils.getEntityManager();
		
		List<FavoriteReport> list = null;
		
		try {
//			StoredProcedureQuery query = em.createNamedStoredProcedureQuery("Report.favoriteByVideo");
			TypedQuery<FavoriteReport> query = em.createQuery(jpql, FavoriteReport.class);
			
			list = query.getResultList();
		} finally {
			em.close();
		}
		return list;
	}
	
	//Report Favorite of User follow by Video Title
	public List<FavoriteUserReport> reportFavoriteUserByVideo(String videoId) {
		String jpql = "select new poly.edu.domain.FavoriteUserReport("
				+ "f.user.usernameId, f.user.fullname, f.user.email, f.likeDate) "
				+ "from Favorite f where f.video.videoId = :videoId order by f.likeDate desc";
		
		EntityManager em = JpaUtils.getEntityManager();
		
		List<FavoriteUserReport> list = null;
		
		try {
			TypedQuery<FavoriteUserReport> query = em.createQuery(jpql, FavoriteUserReport.class);
			query.setParameter("videoId", videoId);
			
			list = query.getResultList();
		} finally {
			em.close();
		}
		return list;
	}
	
	//Report share video by video
	public List<ShareVideoReport> reportShareVideoByVideo(String videoId) {
		String jpql = "Select new poly.edu.domain.ShareVideoReport("
				+ "s.user.fullname, s.user.email, s.emails, s.shareDate) "
				+ "from Share s where s.video.videoId = :videoId order by s.shareDate desc";
		
		EntityManager em = JpaUtils.getEntityManager();
		List<ShareVideoReport> list = null;
		
		try {
			TypedQuery<ShareVideoReport> query = em.createQuery(jpql, ShareVideoReport.class);
			query.setParameter("videoId", videoId);
			
			list = query.getResultList();
		} finally {
			em.close();
		}
		return list;
	}
	
	//display video on favorite page by userID
	public List<Video> displayVideoByUserId(String userId) {
		String jpql = "Select f.video from Favorite f where f.user.usernameId = :userId";
		
		EntityManager em = JpaUtils.getEntityManager();
		List<Video> list = null;
		
		try {
			TypedQuery<Video> query = em.createQuery(jpql, Video.class);
			query.setParameter("userId", userId);
			
			list = query.getResultList();
		} finally {
			em.close();
		}
		return list;
	}
	
	//unlike video by userId and videoId
	public void unlikeVideo(String userId, String videoId) {
		String jpql = "Select f from Favorite f where f.user.usernameId = :userId and f.video.videoId = :videoId";
		
		EntityManager em = JpaUtils.getEntityManager();
		EntityTransaction trans = em.getTransaction();
		
		try {
			trans.begin();
			
			TypedQuery<Favorite> query = em.createQuery(jpql, Favorite.class);
			query.setParameter("userId", userId);
			query.setParameter("videoId", videoId);
			
			Favorite favorite = query.getSingleResult();
			
			em.remove(favorite);
			
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		}finally {
			em.close();
		}
	}
	
	//check video liked
	public Favorite checkVideoLiked(String userId, String videoId) {
		String jpql = "Select f from Favorite f where f.user.usernameId = :userId and f.video.videoId = :videoId";
		
		EntityManager em = JpaUtils.getEntityManager();
		Favorite favorite = new Favorite();
		try {
			TypedQuery<Favorite> query = em.createQuery(jpql, Favorite.class);
			query.setParameter("userId", userId);
			query.setParameter("videoId", videoId);
			
			favorite = query.getSingleResult();
		}catch (Exception e) {
			e.printStackTrace();
			favorite = null;
		}
		finally {
			em.close();
		}
		return favorite;
	}
	
}
