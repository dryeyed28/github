package vo;

import java.util.Date;

public class Deposit {
	private int dep_id;
	private int mem_id;
	/*dep_type 1.충전  2.환급  3.사용*/
	private int dep_type;
	private int dep_request;
	private int dep_balance;
	private Date dep_date;
	public Deposit() {
		super();
	}
	public Deposit(int dep_id, int mem_id, int dep_type, int dep_request, int dep_balance, Date dep_date) {
		super();
		this.dep_id = dep_id;
		this.mem_id = mem_id;
		this.dep_type = dep_type;
		this.dep_request = dep_request;
		this.dep_balance = dep_balance;
		this.dep_date = dep_date;
	}
	public int getDep_id() {
		return dep_id;
	}
	public void setDep_id(int dep_id) {
		this.dep_id = dep_id;
	}
	public int getMem_id() {
		return mem_id;
	}
	public void setMem_id(int mem_id) {
		this.mem_id = mem_id;
	}
	public int getDep_type() {
		return dep_type;
	}
	public void setDep_type(int dep_type) {
		this.dep_type = dep_type;
	}
	public int getDep_request() {
		return dep_request;
	}
	public void setDep_request(int dep_request) {
		this.dep_request = dep_request;
	}
	public int getDep_balance() {
		return dep_balance;
	}
	public void setDep_balance(int dep_balance) {
		this.dep_balance = dep_balance;
	}
	public Date getDep_date() {
		return dep_date;
	}
	public void setDep_date(Date dep_date) {
		this.dep_date = dep_date;
	}
	
}
