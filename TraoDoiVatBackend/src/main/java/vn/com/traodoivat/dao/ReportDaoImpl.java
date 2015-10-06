package vn.com.traodoivat.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import vn.com.traodoivat.model.Report;

@Repository
public class ReportDaoImpl implements ReportDao {
	public static final Logger logger = LoggerFactory
			.getLogger(ReportDao.class);

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
	public void insertReport(Report report) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(report);
		logger.info("Report saved successfully, Report: " + report);
	}

	@Override
	@Transactional
	public void updateReport(Report report) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(report);
		logger.info("Report updated successfully, Report: " + report);
	}

	@Override
	@Transactional
	public void deleteReport(int repID) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Report report = (Report) session.load(Report.class, repID);
		if (null != report) {
			session.delete(report);
		}
		logger.info("Report deleted successfully, Report: " + report);
	}

	@Override
	@Transactional
	public List<Report> listReport() {
		// TODO Auto-generated method stub
		return null;
	}

}
