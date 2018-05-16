package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import sql.MyConnection;
import vo.RepBoard;

public class RepBoardDAOOracle implements RepBoardDAO{

	public int selectCount() throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String selectCountSQL = 
				"SELECT COUNT(*) totalcnt FROM repboard";
		try {
			con = sql.MyConnection.getConnection();
			pstmt = con.prepareStatement(selectCountSQL);
			rs = pstmt.executeQuery();
			rs.next();
			int totalCount = rs.getInt("totalcnt");
			return totalCount;
		}finally {
			MyConnection.close(rs, pstmt, con);
		}
	}
	@Override
	public List<RepBoard> selectAll(int page) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String selectAllSQL="SELECT  b.*" + 
				" FROM (SELECT rownum r, level, a.*" + 
				"  from repboard a" + 
				"  start with parent_seq=0" + 
				"  connect by prior board_seq=parent_seq" + 
				"  order siblings by  board_seq desc)b" + 
				" WHERE r BETWEEN ? AND ?";
		List<RepBoard> list = new ArrayList<>();
		try {
			con = sql.MyConnection.getConnection();
			pstmt = con.prepareStatement(selectAllSQL);
			int cntPerPage=3;//1페이지별 3건씩 보여준다
			int endRow=cntPerPage * page;
			int startRow=endRow-cntPerPage+1; 			
			pstmt.setInt(1, startRow);	pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();		
			while(rs.next()) {
				list.add(new RepBoard(	
						rs.getInt("BOARD_SEQ"),
						rs.getInt("PARENT_SEQ"),
						rs.getString("BOARD_SUBJECT"),
						rs.getString("BOARD_WRITER"),
						rs.getString("BOARD_CONTENTS"),
						rs.getDate("BOARD_DATE"),
						rs.getString("BOARD_PASSWORD"),
						rs.getInt("BOARD_VIEWCOUNT"),
						rs.getInt("LEVEL")
						));
			}
			return list;
		}finally {
			MyConnection.close(rs, pstmt, con);			
		}
	}

	@Override
	public void insertRepBoard(RepBoard board) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String insertRepBoardSQL = 
"INSERT INTO repboard(BOARD_SEQ"
+ ",PARENT_SEQ"
+ ",BOARD_SUBJECT"
+ ",BOARD_WRITER"
+ ",BOARD_CONTENTS"
+ ",BOARD_DATE"
+ ",BOARD_PASSWORD"
+ ",BOARD_VIEWCOUNT)"
+ " VALUES (board_seq.NEXTVAL,0,?,?,?,SYSTIMESTAMP, ?, 0)";
		try {
			con = sql.MyConnection.getConnection();
			pstmt = con.prepareStatement(insertRepBoardSQL);
			pstmt.setString(1, board.getBoard_subject());
			pstmt.setString(2, board.getBoard_writer());
			pstmt.setString(3, board.getBoard_contents());
			pstmt.setString(4, board.getBoard_password());
			pstmt.executeUpdate();
		}finally {
			MyConnection.close(pstmt, con);			
		}		
	}
	public static void main(String[] args) {
		RepBoardDAOOracle test = new RepBoardDAOOracle();
		int page=1;
		try {
			List<RepBoard>list = test.selectAll(page);
			for(RepBoard b:list) {
				System.out.println(b);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}

}
