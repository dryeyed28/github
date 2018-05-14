package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import vo.Customer;
import vo.Zip;

public class ZipDAOOracle implements ZipDAO {
	public ZipDAOOracle() {
		/*1)JDBC드라이버 로드*/
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return;
		}
	}
	@Override
	public List<Zip> selectByDoro(String doro) throws Exception{
		/*2)DB와 연결 */
		Connection con = null;
		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		String user="kitri";
		String password="kitri";
		
		/*3)SQL문장을 DB서버로 송신*/
		PreparedStatement pstmt=null;
		/*4)DB서버로 부터 결과 수신*/
		ResultSet rs=null;
		List<Zip> list = new ArrayList<>();
		try {
			con = DriverManager.getConnection(url, user, password);
			String loginSQL = 
					"SELECT * FROM zip WHERE doro LIKE ?";
			pstmt = con.prepareStatement(loginSQL);
			pstmt.setString(1, doro+"%");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Zip z = new Zip(						
						rs.getString("zipcode")
						,rs.getString("sido")
						,rs.getString("sigungu")
						,rs.getString("eupmyun")
						,rs.getString("doro")
						,rs.getString("boundary")
						);				
				list.add(z);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace(); //톰캣콘솔
			throw e;			
		} finally {			
			if(rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
				}
			if(pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
				}
			if(con != null)
				try {
					con.close();
				} catch (SQLException e) {
				}
				
		}
	}

}
