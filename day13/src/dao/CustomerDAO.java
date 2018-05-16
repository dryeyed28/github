package dao;

import java.util.List;

import vo.Customer;

public interface CustomerDAO {
	void insert(Customer c) throws Exception;
	Customer selectById(String id) throws Exception;
	List<Customer> selectAll() throws Exception;
	void update(Customer c) throws Exception;
	void delete(String id)  throws Exception;
}
