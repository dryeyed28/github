package dao;

import java.util.List;

import vo.Member;

public interface MemberDAO {
	
	public List<Member> selectAll() throws Exception;
	public Member selectById(String mem_userid) throws Exception;
	public void insert(Member m) throws Exception;
	public void delete(String mem_userid) throws Exception;
	public void update(Member m) throws Exception;
	
}
