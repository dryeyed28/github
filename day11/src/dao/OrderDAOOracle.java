package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import sql.MyConnection;
import vo.OrderInfo;
import vo.OrderLine;
import vo.Product;

public class OrderDAOOracle implements OrderDAO {

	@Override
	public List<OrderInfo> selectById(String id) throws Exception {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String selectByIdSQL = 
				"SELECT oi.info_no, oi.info_dt," + 
						"       ol.line_product_code, p.product_name, p.price," + 
						"       ol.line_quantity" + 
						" FROM order_info oi JOIN order_line ol ON oi.info_no = ol.line_no" + 
						"     JOIN product p   ON p.product_code = ol.line_product_code" + 
						" WHERE oi.info_id=?" + 
						" ORDER BY oi.info_no DESC, p.product_code";

		List<OrderInfo> list = new ArrayList<>();
		OrderInfo info = null;
		List<OrderLine> lines = null;

		try {
			con = MyConnection.getConnection();
			pstmt = con.prepareStatement(selectByIdSQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int info_no = rs.getInt("info_no");
				//첫행이거나 주문번호가 다른경우 새로운 Info객체 생성해서
				//리스트에 추가해둠
				//
				if(info == null || info.getInfo_no() != info_no) {
					info = new OrderInfo();
					info.setInfo_no(info_no);
					info.setInfo_id(id);
					info.setInfo_dt(rs.getDate("info_dt"));
					lines = new ArrayList<>();
					info.setLines(lines);
					list.add(info);				
				}
				OrderLine line = new OrderLine();
				line.setLine_no(info_no);
				Product line_product = new Product(
						rs.getInt("line_product_code"),
						rs.getString("product_name"),
						rs.getInt("price"),
						0, //ea
						null //category
						);
				line.setLine_product(line_product);			
				line.setLine_quantity(rs.getInt("line_quantity"));

				lines.add(line);
				
			}//end while(rs.next())
		}finally {
			MyConnection.close(rs, pstmt, con);
		}
		return list;
	}
	
	@Override
	public void insertOrder(OrderInfo info) throws Exception{
		Connection con=null;
		con = MyConnection.getConnection();
		con.setAutoCommit(false);
		try {
			insertOrderInfo(info, con);
			List<OrderLine> lines =info.getLines();
			for(OrderLine line: lines) {
				insertOrderLine(line, con);
			}
			con.commit();
		}catch(Exception e) {			
			con.rollback();
			throw e;
		}
		MyConnection.close(null, con);
	}
	@Override
	public void insertOrderInfo(OrderInfo info,Connection con) throws Exception {
		//Connection con=null;
		PreparedStatement pstmt=null;

		String insertOrderInfoSQL=
"INSERT INTO order_info(info_no, info_id, info_dt)" + 
" VALUES ( order_no_seq.NEXTVAL, ? , SYSTIMESTAMP )"; 
		try {
			//con = MyConnection.getConnection();
			pstmt = con.prepareStatement(insertOrderInfoSQL);
			pstmt.setString(1, info.getInfo_id());
			pstmt.executeUpdate();
		}finally {
			//MyConnection.close(pstmt, con);//???
			MyConnection.close(pstmt);
		}		
	}
	@Override
	public void insertOrderLine(OrderLine line, Connection con) throws Exception {
		PreparedStatement pstmt=null;
		String insertOrderLineSQL = 
" INSERT INTO order_line(line_no, line_product_code, line_quantity)" + 
"  VALUES ( order_no_seq.CURRVAL,  ?  ,  ?   )";//???
		try {
			pstmt = con.prepareStatement(insertOrderLineSQL);
			pstmt.setInt(1, line.getLine_product().getProduct_code());
			pstmt.setInt(2, line.getLine_quantity());
			pstmt.executeUpdate();
		}finally {
			//MyConnection.close(pstmt, con);
			MyConnection.close(pstmt);
		}
		
	}
	public static void main(String[] args) {
		OrderDAOOracle test = new OrderDAOOracle();
		try {
			OrderInfo info = new OrderInfo();
			OrderLine line1 = new OrderLine();
			line1.setLine_product(new Product(5,null, 0, 0, null ));
			line1.setLine_quantity(5);
			
			
			OrderLine line2 = new OrderLine();
			line2.setLine_product(new Product(1000,null, 0, 0, null ));
			//line2.setLine_quantity(2); //commit테스트
			line2.setLine_quantity(9999);//rollback테스트
			List<OrderLine> lines = new ArrayList<>();
			lines.add(line1);
			lines.add(line2);
			info.setLines(lines);
			info.setInfo_id("id1");
						
			test.insertOrder(info);
		}catch(Exception e) {
			e.printStackTrace();
		}
		/*try {
			List<OrderInfo> list = test.selectById("id1");
			System.out.println("주문목록수:" + list.size());
			for(OrderInfo info: list) {
				System.out.println("주문상세목록수:" + info.getLines().size());
				System.out.println(info);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}*/

	}
	
}
