package vo;

import java.util.Date;

public class IOption {
	private IProject iProject;
	private String iPJT_target_amount;
	private Date iPJT_start_date;
	private Date iPJT_end_date;
	private Date iPJT_receiving_date;
	private String iPJT_interest;
	private String iPJT_interest_payment;
	private Date iPJT_dueDate;
	private String iPJT_costAccount;
	private int investable;
	public IOption() {
		super();
	}
	public IOption(IProject iProject, String iPJT_target_amount, Date iPJT_start_date, Date iPJT_end_date,
			Date iPJT_receiving_date, String iPJT_interest, String iPJT_interest_payment, Date iPJT_dueDate,
			String iPJT_costAccount, int investable) {
		super();
		this.iProject = iProject;
		this.iPJT_target_amount = iPJT_target_amount;
		this.iPJT_start_date = iPJT_start_date;
		this.iPJT_end_date = iPJT_end_date;
		this.iPJT_receiving_date = iPJT_receiving_date;
		this.iPJT_interest = iPJT_interest;
		this.iPJT_interest_payment = iPJT_interest_payment;
		this.iPJT_dueDate = iPJT_dueDate;
		this.iPJT_costAccount = iPJT_costAccount;
		this.investable = investable;
	}
	public IProject getiProject() {
		return iProject;
	}
	public void setiProject(IProject iProject) {
		this.iProject = iProject;
	}
	public String getiPJT_target_amount() {
		return iPJT_target_amount;
	}
	public void setiPJT_target_amount(String iPJT_target_amount) {
		this.iPJT_target_amount = iPJT_target_amount;
	}
	public Date getiPJT_start_date() {
		return iPJT_start_date;
	}
	public void setiPJT_start_date(Date iPJT_start_date) {
		this.iPJT_start_date = iPJT_start_date;
	}
	public Date getiPJT_end_date() {
		return iPJT_end_date;
	}
	public void setiPJT_end_date(Date iPJT_end_date) {
		this.iPJT_end_date = iPJT_end_date;
	}
	public Date getiPJT_receiving_date() {
		return iPJT_receiving_date;
	}
	public void setiPJT_receiving_date(Date iPJT_receiving_date) {
		this.iPJT_receiving_date = iPJT_receiving_date;
	}
	public String getiPJT_interest() {
		return iPJT_interest;
	}
	public void setiPJT_interest(String iPJT_interest) {
		this.iPJT_interest = iPJT_interest;
	}
	public String getiPJT_interest_payment() {
		return iPJT_interest_payment;
	}
	public void setiPJT_interest_payment(String iPJT_interest_payment) {
		this.iPJT_interest_payment = iPJT_interest_payment;
	}
	public Date getiPJT_dueDate() {
		return iPJT_dueDate;
	}
	public void setiPJT_dueDate(Date iPJT_dueDate) {
		this.iPJT_dueDate = iPJT_dueDate;
	}
	public String getiPJT_costAccount() {
		return iPJT_costAccount;
	}
	public void setiPJT_costAccount(String iPJT_costAccount) {
		this.iPJT_costAccount = iPJT_costAccount;
	}
	public int getInvestable() {
		return investable;
	}
	public void setInvestable(int investable) {
		this.investable = investable;
	}
	
}
	
