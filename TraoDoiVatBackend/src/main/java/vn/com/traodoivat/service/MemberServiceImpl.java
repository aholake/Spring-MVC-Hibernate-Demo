package vn.com.traodoivat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.com.traodoivat.dao.MemberDao;
import vn.com.traodoivat.model.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao memberDao;

	@Override
	@Transactional
	public void insertMember(Member member) {
		// TODO Auto-generated method stub
		this.memberDao.insertMember(member);
	}

	@Override
	@Transactional
	public void updateMember(Member member) {
		// TODO Auto-generated method stub
		this.memberDao.updateMember(member);
	}

	@Override
	@Transactional
	public void deleteMember(int memId) {
		// TODO Auto-generated method stub
		this.deleteMember(memId);
	}

	@Override
	public List<Member> listMember() {
		// TODO Auto-generated method stub
		return this.memberDao.listMember();
	}

	@Override
	@Transactional
	public Member getMemberById(int memId) {
		// TODO Auto-generated method stub
		return this.memberDao.getMemberById(memId);
	}

}
