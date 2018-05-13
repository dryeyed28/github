package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import vo.Customer;
public class CustomerDAOOracle implements CustomerDAO {
	
	@Override
	public void insert(Customer c) throws Exception {
		/*2)DB와 연결 */
		Connection con = null;
		
		/*3)SQL문장을 DB서버로 송신*/
		PreparedStatement pstmt=null;
		try {
			con = sql.MyConnection.getConnection();
			String insertSQL = 
						"INSERT INTO customer(id, pwd, name, zipcode, address) VALUES (?,?,?,?,?)";
			pstmt = con.prepareStatement(insertSQL);
			pstmt.setString(1, c.getId());
			pstmt.setString(2, c.getPwd());
			pstmt.setString(3, c.getName());
			pstmt.setString(4, c.getZipcode());
			pstmt.setString(5, c.getAddress());
			pstmt.executeUpdate();
		}catch(SQLException e) {
			if(e.getErrorCode()==1) { 
				throw new Exception("이미 사용중인 아이디입니다");
			}else {
				throw e;
			}
		}finally {
			sql.MyConnection.close(pstmt, con);
		}
	}

	@Override
	public Customer selectById(String id) throws Exception {
		/*2)DB와 연결 */
		Connection con = null;
		/*3)SQL문장을 DB서버로 송신*/
		PreparedStatement pstmt=null;
		/*4)DB서버로 부터 결과 수신*/
		ResultSet rs=null;
		
		try {
			con = sql.MyConnection.getConnection();
			String loginSQL = 
					"SELECT * FROM customer WHERE id=?";
			pstmt = con.prepareStatement(loginSQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(!rs.next()) { //아이디가 없는경우
				return null;
			}else {
				return new Customer(
						id,
						rs.getString("pwd"),
						rs.getString("name"),
						rs.getString("zipcode"),
						rs.getString("address")
						);
			}
		} catch (SQLException e) {
			e.printStackTrace(); //톰캣콘솔
			throw e;			
		} finally {	
			sql.MyConnection.close(rs, pstmt, con);			
		}
	}

	@Override
	public List<Customer> selectAll() throws Exception {
		return null;
	}

	@Override
	public void update(Customer c) throws Exception {
	}

	@Override
	public void delete(String id) throws Exception {
	}
	
	public static void main(String[] args) {
		CustomerDAOOracle test = new CustomerDAOOracle();
		String id = "id1";
		try {
			Customer c = test.selectById(id);
			System.out.println(c);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

