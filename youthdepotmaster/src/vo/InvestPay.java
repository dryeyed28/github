package vo;

public class InvestPay {
	private int iPay_id;
	private int iProject_pay_amount;
	private int mem_id;
	private int iPJT_id;
	private int iProduct_id;
	private int invest_pay;
	public InvestPay() {
		super();
	}
	public InvestPay(int iPay_id, int iProject_pay_amount, int mem_id, int iPJT_id, int iProduct_id, int invest_pay) {
		super();
		this.iPay_id = iPay_id;
		this.iProject_pay_amount = iProject_pay_amount;
		this.mem_id = mem_id;
		this.iPJT_id = iPJT_id;
		this.iProduct_id = iProduct_id;
		this.invest_pay = invest_pay;
	}
	public int getiPay_id() {
		return iPay_id;
	}
	public void setiPay_id(int iPay_id) {
		this.iPay_id = iPay_id;
	}
	public int getiProject_pay_amount() {
		return iProject_pay_amount;
	}
	public void setiProject_pay_amount(int iProject_pay_amount) {
		this.iProject_pay_amount = iProject_pay_amount;
	}
	public int getMem_id() {
		return mem_id;
	}
	public void setMem_id(int mem_id) {
		this.mem_id = mem_id;
	}
	public int getiPJT_id() {
		return iPJT_id;
	}
	public void setiPJT_id(int iPJT_id) {
		this.iPJT_id = iPJT_id;
	}
	public int getiProduct_id() {
		return iProduct_id;
	}
	public void setiProduct_id(int iProduct_id) {
		this.iProduct_id = iProduct_id;
	}
	public int getInvest_pay() {
		return invest_pay;
	}
	public void setInvest_pay(int invest_pay) {
		this.invest_pay = invest_pay;
	}
	
}
