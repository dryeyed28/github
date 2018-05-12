package service;

import java.util.List;

import dao.ProductDAO;
import dao.ProductDAOOracle;
import vo.Product;

public class ProductService {
	private ProductDAO dao = new ProductDAOOracle();
	public List<Product> findAll() throws Exception{
		return dao.selectAll();
	}
	public Product findByNo(int product_code)throws Exception{
		Product p =  dao.selectByNo(product_code);
		if(p == null) {
			throw new Exception("상품이 없습니다.");
		}
		return p;
	}
	public List<Product> findByName(String product_name) throws Exception{
		List<Product> list = dao.selectByName(product_name);
		if(list.size() == 0) {
			throw new Exception("상품이 없습니다.");
		}
		return list;
	}
}
