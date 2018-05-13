package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import sql.MyConnection;
import vo.PCategory;
import vo.Product;

public class ProductDAOOracle implements ProductDAO {
	
	@Override
	public List<Product> selectAll() throws Exception {
		List<Product> list = new ArrayList<>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = sql.MyConnection.getConnection();
			String selectAllSQL =
			"SELECT p.PRODUCT_CODE, p.PRODUCT_NAME, p.PRICE, p.EA,"
		    + " p.pc_code, c.pc_name"		
			+ " FROM product p"
			+ " JOIN pcategory c"
			+ " ON p.pc_code = c.pc_code"
			+ " ORDER BY PRODUCT_CODE";
			pstmt = con.prepareStatement(selectAllSQL);
			rs = pstmt.executeQuery();
		
			while(rs.next()) {
				list.add(new Product(
					    rs.getInt("PRODUCT_CODE"),
					    rs.getString("PRODUCT_NAME"),
					    rs.getInt("PRICE"),
					    rs.getInt("EA"),
					    new PCategory(rs.getInt("PC_CODE"),
					    		     rs.getString("PC_NAME"))));
			}
		}finally {
			MyConnection.close(rs, pstmt, con);
		}
		return list;
	}

	@Override
	public List<Product> selectAll(int currentPage) throws Exception {
		return null;
	}

	@Override
	public List<Product> selectByName(String name) throws Exception {
		List<Product> list = new ArrayList<>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = sql.MyConnection.getConnection();
			String selectByNameSQL =
		    "SELECT p.PRODUCT_CODE, p.PRODUCT_NAME, p.PRICE, p.EA,"
		    + " p.pc_code, c.pc_name"		
			+ " FROM product p"
			+ " JOIN pcategory c"
			+ " ON p.pc_code = c.pc_code"
			+ " WHERE product_name LIKE ? "
			+ " ORDER BY product_name";
			pstmt = con.prepareStatement(selectByNameSQL);
			pstmt.setString(1, "%"+ name +"%");
			rs = pstmt.executeQuery();
		
			while(rs.next()) {
				list.add(new Product(
					    rs.getInt("PRODUCT_CODE"),
					    rs.getString("PRODUCT_NAME"),
					    rs.getInt("PRICE"),
					    rs.getInt("EA"),
					    new PCategory(rs.getInt("PC_CODE"),
					    		     rs.getString("PC_NAME"))));
			}
		}finally {
			MyConnection.close(rs, pstmt, con);
		}
		return list;
	}

	@Override
	public Product selectByNo(int no) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = sql.MyConnection.getConnection();
			String selectByNoSQL =
			//"SELECT * FROM product WHERE product_code=?";
			  "SELECT p.PRODUCT_CODE, p.PRODUCT_NAME, p.PRICE, p.EA,"
			+ " p.pc_code, c.pc_name"
			+ " FROM product p" 
			+ " JOIN pcategory c"
			+ " ON p.pc_code = c.pc_code"
			+ " WHERE product_code=?";					
			pstmt = con.prepareStatement(selectByNoSQL);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
		
			if(rs.next()) {
				return new Product(
					    rs.getInt("PRODUCT_CODE"),
					    rs.getString("PRODUCT_NAME"),
					    rs.getInt("PRICE"),
					    rs.getInt("EA"),
					    new PCategory(rs.getInt("PC_CODE"),
					    		     rs.getString("PC_NAME")));
			}else {
				return null;
			}
		}finally {
			MyConnection.close(rs, pstmt, con);
		}
	}
	
	public static void main(String[] args) {
		ProductDAOOracle test = new ProductDAOOracle();
		try {
			List<Product> list  = test.selectAll();
			for(Product p :list) {
				System.out.println(p);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};
		
	}

}
