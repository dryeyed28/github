package service;

import java.util.List;

import dao.CustomerDAO;
import dao.CustomerDAOOracle;
import vo.Customer;

public class CustomerService {
	private CustomerDAO dao = new CustomerDAOOracle();
	
	public void signup(Customer c) throws Exception{
		dao.insert(c);
	}
	public String login(String id, String pwd) throws Exception{
		Customer c =  dao.selectById(id);
		if(c !=null) { //아이디가 있는 경우
			if(c.getPwd().equals(pwd)) {//비밀번호일치
				return "1";
			}
		}
		return "-1";
	}
	public String dupChk(String id) throws Exception{
		Customer c =  dao.selectById(id);
		if(c==null) {
			return "1"; //아이디가 없는경우
		}else {
			return "-1";
		}
	}
	public List<Customer> findAll() throws Exception{
		return null;
	}
	
}
