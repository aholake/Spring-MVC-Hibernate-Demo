package vn.com.traodoivat.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import vn.com.traodoivat.model.Post;

@Repository
public class PostDaoImpl implements PostDao {
	private static final Logger logger = LoggerFactory.getLogger(PostDao.class);

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	@Transactional
	public void insertPost(Post post) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(post);
		logger.info("Post saved successfully, Post: " + post);
	}

	@Override
	@Transactional
	public void updatePost(Post post) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(post);
		logger.info("Post updated successfully, Post: " + post);
	}

	@Override
	@Transactional
	public void deletePost(int pID) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Post post = (Post) session.load(Post.class, pID);
		if (null != post) {
			session.delete(post);
		}
		logger.info("Post deletes successfully, Post: " + post);
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<Post> listPost() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Post");
		List<Post> listPost = query.list();
		for (Post p : listPost) {
			logger.info("Post list: " + listPost);
		}
		return listPost;
	}

}
