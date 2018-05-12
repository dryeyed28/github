package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import sql.MyConnection;
import vo.RepBoard;

public class RepBoardDAOOracle implements RepBoardDAO {

	@Override
	public List<RepBoard> selectAll(int page) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String selectAllSQL = "SELECT b.*\r\n" + " FROM (SELECT rownum r, level, a.*\r\n" + " FROM repboard a\r\n"
				+ " START WITH parent_seq = 0\r\n" + " CONNECT BY PRIOR board_seq = parent_seq\r\n"
				+ " ORDER siblings by board_seq DESC)b\r\n" + " WHERE r BETWEEN ? AND ?";
		List<RepBoard> list = new ArrayList<>();
		try {
			con = sql.MyConnection.getConnection();
			pstmt = con.prepareStatement(selectAllSQL);
			// 1페이지별 3건씩 보여준다 ex:1페이지인경우 startRow는 1, endRow는 3
			// 2 4 6
			// 3 7 9
			int cntPerPage = 3;// 1페이지별 3건씩 보여준다
			int endRow = cntPerPage * page;
			int startRow = endRow - cntPerPage + 1;

			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new RepBoard(rs.getInt("board_seq"), rs.getInt("parent_seq"), rs.getString("board_subject"),
						rs.getString("board_writer"), rs.getString("board_contents"), rs.getDate("board_date"),
						rs.getString("board_password"), rs.getInt("board_viewcount"),
						rs.getInt("level")
						));
			}
			return list;
		} finally {
			MyConnection.close(rs, pstmt, con);
		}
	}

	@Override
	public void insertRepBoard(RepBoard board) throws Exception {

	}
	public static void main(String[] args) {
		RepBoardDAOOracle test = new RepBoardDAOOracle();
		int page = 1;
		try {
			List<RepBoard> list = test.selectAll(page);
			for(RepBoard b:list) {
				System.out.println(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
