package service;

import java.util.List;

import dao.MemberDAO;
import dao.MemberDAOOracle;
import vo.Member;

public class MemberService {
	/*
	 	1. 인터페이스 타입의 DAOOracle 객체 생성
	 	2. findXX메소드를 생성하고 컨트롤러로 1, -1값 리턴
	*/
	
	private MemberDAO dao = new MemberDAOOracle();
	
	public List<Member> findByAll() throws Exception {
		return dao.selectAll();
	}
	
	public Member findById(String mem_userId) throws Exception {
		Member member = dao.selectById(mem_userId);
		return member;
	}
	
	
}
