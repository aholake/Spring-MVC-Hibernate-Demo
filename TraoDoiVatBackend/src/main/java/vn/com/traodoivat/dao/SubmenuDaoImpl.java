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

import vn.com.traodoivat.model.Menu;
import vn.com.traodoivat.model.Submenu;

@Repository
public class SubmenuDaoImpl implements SubmenuDao {
	private static final Logger logger = LoggerFactory
			.getLogger(SubmenuDao.class);

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
	public void insertSubmenu(Submenu submenu) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(submenu);
		logger.info("Submenu saved successfully, Submenu: " + submenu);
	}

	@Override
	@Transactional
	public void updateSubmenu(Submenu submenu) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(submenu);
		logger.info("Submenu updated successfully, Submenu: " + submenu);
	}

	@Override
	@Transactional
	public void deleteSubmenu(int sID) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Submenu submenu = (Submenu) session.load(Submenu.class, sID);
		if (null != submenu) {
			session.delete(submenu);
		}
		logger.info("Submenu delelted successfully, Submenu: " + submenu);
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<Submenu> listSubmenu() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Submenu");
		List<Submenu> listSubmenu = query.list();
		for (Submenu smenu : listSubmenu) {
			logger.info("Submenu List:" + smenu);
		}
		return listSubmenu;
	}

}
