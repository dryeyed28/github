package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import sql.OracleConnection;
import vo.Member;

public class MemberDAOOracle implements MemberDAO {

	@Override
	public List<Member> selectAll() throws Exception {
		/*
		 * 1. DB연결(getConnection()메소드 활용) 
		 * 2. pstmt 설정 
		 * 3. rs 설정
		 * 4. service에서 findAll()메소드
		 * 리턴값 가져오기
		 */
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<Member> list = new ArrayList();
		Member member = new Member();
		
		try {
		con = OracleConnection.getConnection();
		String selectAll = "select *\r\n" + 
				"from members";
		pstmt = con.prepareStatement(selectAll);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			if (member == null) {
				member.setMem_id(rs.getInt("mem_id"));
				member.setMem_userId(rs.getString("mem_userId"));
				member.setMem_email(rs.getString("mem_email"));
				member.setMem_password(rs.getString("mem_password"));
				member.setMem_userName(rs.getString("mem_userName"));
				member.setMem_nickName(rs.getString("mem_nickName"));
				member.setMem_phone(rs.getString("mem_phone"));
				member.setMem_sex(rs.getInt("mem_sex"));
				member.setMem_register_dateTime(rs.getDate("mem_register_dateTime"));
				member.setMem_lastLogin_dateTime(rs.getDate("mem_lastLogin_dateTime"));
				member.setMem_keeper(rs.getInt("mem_keeper"));
				member.setMem_passion(rs.getInt("mem_passion"));
				
				list.add(member);
			}
		}
		
		} finally {
			OracleConnection.close(rs, pstmt, con);
		}
		return list;
	}

	@Override
	public Member selectById(String mem_userId) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		Member member = new Member();

		try {
			con = OracleConnection.getConnection();
			String selectById = "select *\r\n" + "from members\r\n" + "where mem_userid = ?";
			pstmt.setString(1, mem_userId);
			pstmt = con.prepareStatement(selectById);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				if (member == null) {
					member.setMem_id(rs.getInt("mem_id"));
					member.setMem_userId(mem_userId);
					member.setMem_email(rs.getString("mem_email"));
					member.setMem_password(rs.getString("mem_password"));
					member.setMem_userName(rs.getString("mem_userName"));
					member.setMem_nickName(rs.getString("mem_nickName"));
					member.setMem_phone(rs.getString("mem_phone"));
					member.setMem_sex(rs.getInt("mem_sex"));
					member.setMem_register_dateTime(rs.getDate("mem_register_dateTime"));
					member.setMem_lastLogin_dateTime(rs.getDate("mem_lastLogin_dateTime"));
					member.setMem_keeper(rs.getInt("mem_keeper"));
					member.setMem_passion(rs.getInt("mem_passion"));
				}
			}
		} finally {
			OracleConnection.close(rs, pstmt, con);

		}
		return member;
	}

	@Override
	public void insert(Member m) throws Exception {

	}

	@Override
	public void delete(String mem_userid) throws Exception {

	}

	@Override
	public void update(Member m) throws Exception {

	}
}
