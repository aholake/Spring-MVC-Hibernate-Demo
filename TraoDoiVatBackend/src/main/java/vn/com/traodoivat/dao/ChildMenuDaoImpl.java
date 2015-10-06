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

import vn.com.traodoivat.model.ChildMenu;

@Repository
public class ChildMenuDaoImpl implements ChildMenuDao {
	public static final Logger logger = LoggerFactory
			.getLogger(ChildMenuDao.class);

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
	public void inseredChildMenu(ChildMenu childMenu) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(childMenu);
		logger.info("ChildMenu saved successfully, ChildMenu: " + childMenu);
	}

	@Override
	@Transactional
	public void updatedChildMenu(ChildMenu childMenu) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(childMenu);
		logger.info("ChildMenu updated successfully, ChildMenu: " + childMenu);
	}

	@Override
	@Transactional
	public void deletedChildMenu(int cid) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		ChildMenu childMenu = (ChildMenu) session.load(ChildMenu.class, cid);
		if (null != childMenu) {
			session.delete(childMenu);
		}
		logger.info("ChildMenu deleted successfully, ChildMenu: " + childMenu);
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<ChildMenu> listChildMenu() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ChildMenu");
		List<ChildMenu> childmenuList = query.list();
		for (ChildMenu cm : childmenuList) {
			logger.info("ChildMenu List:" + cm);
		}
		return childmenuList;
	}

}
