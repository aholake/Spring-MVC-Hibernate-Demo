package vn.com.traodoivat.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import vn.com.traodoivat.model.Comment;

@Repository
public class CommentDaoImpl implements CommentDao {

	private static final Logger logger = LoggerFactory
			.getLogger(MemberDao.class);

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
	public void insertComment(Comment comment) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(comment);
		logger.info("Comment saved successfully, Comment Details=" + comment);
	}

	@Override
	@Transactional
	public void updateComment(Comment comment) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(comment);
		logger.info("Comment updated successfully, Comment Details=" + comment);
	}

	@Override
	@Transactional
	public void deletecomment(int cID) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Comment comment = (Comment) session.load(Comment.class, cID);
		if (null != comment) {
			session.delete(comment);
		}
		logger.info("Comment delete successfully, Comment Details=" + comment);
	}

}
