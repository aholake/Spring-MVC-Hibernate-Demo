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

import vn.com.traodoivat.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao {
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
	public void insertMember(Member member) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(member);
		logger.info("Member saved successfully, Member Details=" + member);
	}

	@Override
	@Transactional
	public void updateMember(Member member) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(member);
		logger.info("Member updated successfully, Member Details=" + member);

	}

	@Override
	@Transactional
	public void deleteMember(int memId) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Member member = (Member) session.load(Member.class, memId);
		if (null != member) {
			session.delete(member);
		}
		logger.info("Member deleted successfully, Member Details=" + member);
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<Member> listMember() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Member");
		List<Member> memberList = query.list();
		for (Member m : memberList) {
			logger.info("Member List:" + m);
		}
		return memberList;
	}

	@Override
	@Transactional
	public Member getMemberById(int memId) {
		Session session = this.sessionFactory.getCurrentSession();
		Member member = (Member) session.load(Member.class, new Integer(memId));
		logger.info("Member loaded successfully, Member details=" + member);
		return member;
	}

}
