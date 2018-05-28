package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import vo.RApply;

public class RewardDAOOracle implements RewardDAO {

	@Override
	public void apllyinsert(RApply rApply) throws Exception {
		/*2)DB와 연결 */
		Connection con = null;
		
		/*3)SQL문장을 DB서버로 송신*/
		PreparedStatement pstmt=null;
		try {
			con = sql.OracleConnection.getConnection();
			String insertSQL = "";
			pstmt = con.prepareStatement(insertSQL);
			pstmt.executeUpdate();
		}catch(SQLException e) {
			if(e.getErrorCode()==1) { 
				throw new Exception("이미 사용중인 아이디입니다");
			}else {
				throw e;
			}
		}finally {
			sql.OracleConnection.close(pstmt, con);
		}
		
	}

}
