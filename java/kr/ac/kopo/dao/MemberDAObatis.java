package kr.ac.kopo.dao;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.vo.MemberVO;

public class MemberDAObatis {

	private SqlSession session;

	public MemberDAObatis() {
		session = new MemberBatisConfig().getInstance();
	}

	public MemberVO userInfo(String userID) {
		MemberVO member = session.selectOne("member.dao.memberDAO.loginUserInfo", userID);
		return member;
	}
	
	public void insertUserInfo(MemberVO member) {
		session.insert("member.dao.memberDAO.insertUserInfo", member);
		session.commit();
	}
	
}
