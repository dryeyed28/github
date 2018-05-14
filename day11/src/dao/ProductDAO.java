package dao;

import java.util.List;

import vo.Product;

public interface ProductDAO {
	public List<Product> selectAll() throws Exception;
	public List<Product> selectAll(int currentPage) throws Exception;
	public List<Product> selectByName(String name) throws Exception;
	public Product selectByNo(int no) throws Exception;
	
}
