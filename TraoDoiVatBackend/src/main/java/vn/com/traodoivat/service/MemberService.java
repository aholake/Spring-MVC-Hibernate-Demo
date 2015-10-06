package vn.com.traodoivat.service;

import java.util.List;

import vn.com.traodoivat.model.Member;

public interface MemberService {
	/*
	 * -mothod: insert Member -return: void
	 */
	public void insertMember(Member member);

	/*
	 * -mothod: update Member -return: void
	 */
	public void updateMember(Member member);

	/*
	 * -mothod: remove Member by id Member -return: void
	 */
	public void deleteMember(int memId);

	/*
	 * -mothod: load list Member -return: list Member
	 */
	public List<Member> listMember();

	/*
	 * -mothod: get Member by id Member -return: Member
	 */
	public Member getMemberById(int memId);
}
