package service;

import java.util.List;

import dao.OrderDAO;
import dao.OrderDAOOracle;
import vo.OrderInfo;

public class OrderService {
	private OrderDAO dao = new OrderDAOOracle();
	public List<OrderInfo> findById(String id) throws Exception{
		return dao.selectById(id);
	}
	public void addOrder(OrderInfo info) throws Exception{
		dao.insertOrder(info);
	}
}
