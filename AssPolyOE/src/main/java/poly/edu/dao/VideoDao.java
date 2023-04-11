package poly.edu.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import poly.edu.model.User;
import poly.edu.model.Video;

public class VideoDao extends AbstractEntityDao<Video>{

	public VideoDao() {
		super(Video.class);
	}
	
	public List<Video> findVideosByKeyWord(String key) {
		String jpql = "Select o from Video o where o.title like :title";
		
		EntityManager em = JpaUtils.getEntityManager();
		List<Video> list = null;
		
		try {
			TypedQuery<Video> query = em.createQuery(jpql, Video.class);
			query.setParameter("title", "%"+key+"%");
			list = query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			list = null;
		}finally {
			em.close();
		}
		return list;
	}
	
}
