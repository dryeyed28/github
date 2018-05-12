package dao;

import java.sql.Connection;
import java.util.List;

import vo.OrderInfo;
import vo.OrderLine;

public interface OrderDAO {
	public List<OrderInfo> selectById(String id) throws Exception;
	public void insertOrder(OrderInfo info) throws Exception;
	public void insertOrderInfo(OrderInfo info, Connection con) throws Exception;
	public void insertOrderLine(OrderLine line, Connection con) throws Exception;
}
