package vo;

import java.util.Date;

public class IMeta {
	private IProject iProject;
	private String iPJT_title;
	private String iPJT_subTitle;
	private int iInvesting_amount;
	private int iTarget_amount;
	private String iPJT_image;
	private String iPJT_category;
	private Date iPJT_startDay;
	private Date iPJT_endDay;
	public IMeta() {
		super();
	}
	public IMeta(IProject iProject, String iPJT_title, String iPJT_subTitle, int iInvesting_amount, int iTarget_amount,
			String iPJT_image, String iPJT_category, Date iPJT_startDay, Date iPJT_endDay) {
		super();
		this.iProject = iProject;
		this.iPJT_title = iPJT_title;
		this.iPJT_subTitle = iPJT_subTitle;
		this.iInvesting_amount = iInvesting_amount;
		this.iTarget_amount = iTarget_amount;
		this.iPJT_image = iPJT_image;
		this.iPJT_category = iPJT_category;
		this.iPJT_startDay = iPJT_startDay;
		this.iPJT_endDay = iPJT_endDay;
	}
	public IProject getiProject() {
		return iProject;
	}
	public void setiProject(IProject iProject) {
		this.iProject = iProject;
	}
	public String getiPJT_title() {
		return iPJT_title;
	}
	public void setiPJT_title(String iPJT_title) {
		this.iPJT_title = iPJT_title;
	}
	public String getiPJT_subTitle() {
		return iPJT_subTitle;
	}
	public void setiPJT_subTitle(String iPJT_subTitle) {
		this.iPJT_subTitle = iPJT_subTitle;
	}
	public int getiInvesting_amount() {
		return iInvesting_amount;
	}
	public void setiInvesting_amount(int iInvesting_amount) {
		this.iInvesting_amount = iInvesting_amount;
	}
	public int getiTarget_amount() {
		return iTarget_amount;
	}
	public void setiTarget_amount(int iTarget_amount) {
		this.iTarget_amount = iTarget_amount;
	}
	public String getiPJT_image() {
		return iPJT_image;
	}
	public void setiPJT_image(String iPJT_image) {
		this.iPJT_image = iPJT_image;
	}
	public String getiPJT_category() {
		return iPJT_category;
	}
	public void setiPJT_category(String iPJT_category) {
		this.iPJT_category = iPJT_category;
	}
	public Date getiPJT_startDay() {
		return iPJT_startDay;
	}
	public void setiPJT_startDay(Date iPJT_startDay) {
		this.iPJT_startDay = iPJT_startDay;
	}
	public Date getiPJT_endDay() {
		return iPJT_endDay;
	}
	public void setiPJT_endDay(Date iPJT_endDay) {
		this.iPJT_endDay = iPJT_endDay;
	}
	
}
