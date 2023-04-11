package poly.edu.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import poly.edu.model.User;

public class UserDao extends AbstractEntityDao<User>{

	public UserDao() {
		super(User.class);
	}
	
	public void changePassword(String username, String oldPassword, String newPassword) 
			throws Exception {
		EntityManager em = JpaUtils.getEntityManager();
		
		EntityTransaction trans = em.getTransaction();
		
		String jpql = "Select u from User u Where u.usernameId = :username and u.password = :password";
		
		try {
			trans.begin();
			TypedQuery<User> query = em.createQuery(jpql, User.class);
			query.setParameter("username", username);
			query.setParameter("password", oldPassword);
			
			User user = query.getSingleResult();
			
			if (user == null) {
				throw new Exception("Username or current password are incorrect!");
			}
			
			user.setPassword(newPassword);
			em.merge(user);
			
			trans.commit();
		} catch (Exception e) {
			trans.rollback();
			throw e;
		}finally {
			em.close();
		}
	}
	
	public User findUserByIdAndEmail(String username, String email) {
		EntityManager em = JpaUtils.getEntityManager();
		
		String jpql = "Select u from User u where u.usernameId = :username and u.email = :email";
		
		try {
			TypedQuery<User> query = em.createQuery(jpql, User.class);
			query.setParameter("username", username);
			query.setParameter("email", email);
			
			return query.getSingleResult();
		
		} finally {
			em.close();
		}
	}
	
	public List<User> findUsersByKeyWord(String key) {
		String jpql = "Select o from User o where o.fullname like :fullname";
		
		EntityManager em = JpaUtils.getEntityManager();
		List<User> list = null;
		
		try {
			TypedQuery<User> query = em.createQuery(jpql, User.class);
			query.setParameter("fullname", "%"+key+"%");
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
