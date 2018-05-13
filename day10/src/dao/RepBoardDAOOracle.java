package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import sql.MyConnection;
import vo.RepBoard;

public class RepBoardDAOOracle implements RepBoardDAO {
	
	public int selectCount() throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String selectCountSQL = "SELECT COUNT(*) totalcnt FROM repboard";
		
		try {
			con = MyConnection.getConnection();
			pstmt = con.prepareStatement(selectCountSQL);
			rs = pstmt.executeQuery();
			
			rs.next();
			int totalCount = rs.getInt("totalcnt");
			return totalCount;
		} finally {
			MyConnection.close(rs, pstmt, con);
		}
	}

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
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String insertRepBoardSQL = "INSERT INTO repboard(board_seq, parent_seq, board_subject, board_writer, board_contents, board_date, board_password, board_viewcount)\r\n" + 
				"VALUES ((SELECT max(board_seq)+1\r\n" + 
				"FROM repboard), 0, ?, ?, ?, SYSTIMESTAMP, ?, 0)"; 
		
		try {
		con = MyConnection.getConnection();
		pstmt = con.prepareStatement(insertRepBoardSQL);
		
		pstmt.setString(1, board.getBoard_subject());
		pstmt.setString(2, board.getBoard_writer());
		pstmt.setString(3, board.getBoard_content());
		pstmt.setString(4, board.getBoard_password());
		pstmt.executeQuery();
		} finally {
			MyConnection.close(pstmt, con);
		}
	}
	public static void main(String[] args) {
		/*RepBoardDAOOracle test = new RepBoardDAOOracle();
		int page = 1;
		try {
			List<RepBoard> list = test.selectAll(page);
			for(RepBoard b:list) {
				System.out.println(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}*/
		
		RepBoardDAOOracle test = new RepBoardDAOOracle();
		RepBoard board = new RepBoard();
		
		board.setBoard_subject("1s");
		board.setBoard_writer("1w");
		board.setBoard_content("1c");
		board.setBoard_password("1p");
		
		try {
		test.insertRepBoard(board);
		System.out.println("보드값은 : " + board);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
