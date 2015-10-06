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

@Repository
public class MenuDaoImpl implements MenuDao {
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
	public void insertMenu(Menu menu) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(menu);
		logger.info("Menu saved successfully, Menu Details=" + menu);
	}

	@Override
	@Transactional
	public void updateMenu(Menu menu) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(menu);
		logger.info("Menu updates successfully, Menu Details=" + menu);
	}

	@Override
	@Transactional
	public void deleteMenu(int menuID) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Menu menu = (Menu) session.load(Menu.class, menuID);
		if (null != menu) {
			session.delete(menu);
		}
		logger.info("Menu deleted successfully, Menu Details=" + menu);
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<Menu> listMenu() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Menu");
		List<Menu> menuList = query.list();
		for (Menu m : menuList) {
			logger.info("Menu List:" + m);
		}
		return menuList;
	}

}
