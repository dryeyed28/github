package vo;

import java.util.Date;

public class RMeta {
	private RProject rProject;
	private String rPJT_title;
	private String rPJT_subTitle;
	private int rInvesting_amount;
	private int rTarget_amount;
	private String rPJT_image;
	private String rPJT_category;
	private String rPJT_paper;
	private Date rPJT_startDay;
	private Date rPJT_endDay;
	public RMeta() {
		super();
	}
	public RMeta(RProject rProject, String rPJT_title, String rPJT_subTitle, int rInvesting_amount, int rTarget_amount,
			String rPJT_image, String rPJT_category, String rPJT_paper, Date rPJT_startDay, Date rPJT_endDay) {
		super();
		this.rProject = rProject;
		this.rPJT_title = rPJT_title;
		this.rPJT_subTitle = rPJT_subTitle;
		this.rInvesting_amount = rInvesting_amount;
		this.rTarget_amount = rTarget_amount;
		this.rPJT_image = rPJT_image;
		this.rPJT_category = rPJT_category;
		this.rPJT_paper = rPJT_paper;
		this.rPJT_startDay = rPJT_startDay;
		this.rPJT_endDay = rPJT_endDay;
	}
	public RProject getrProject() {
		return rProject;
	}
	public void setrProject(RProject rProject) {
		this.rProject = rProject;
	}
	public String getrPJT_title() {
		return rPJT_title;
	}
	public void setrPJT_title(String rPJT_title) {
		this.rPJT_title = rPJT_title;
	}
	public String getrPJT_subTitle() {
		return rPJT_subTitle;
	}
	public void setrPJT_subTitle(String rPJT_subTitle) {
		this.rPJT_subTitle = rPJT_subTitle;
	}
	public int getrInvesting_amount() {
		return rInvesting_amount;
	}
	public void setrInvesting_amount(int rInvesting_amount) {
		this.rInvesting_amount = rInvesting_amount;
	}
	public int getrTarget_amount() {
		return rTarget_amount;
	}
	public void setrTarget_amount(int rTarget_amount) {
		this.rTarget_amount = rTarget_amount;
	}
	public String getrPJT_image() {
		return rPJT_image;
	}
	public void setrPJT_image(String rPJT_image) {
		this.rPJT_image = rPJT_image;
	}
	public String getrPJT_category() {
		return rPJT_category;
	}
	public void setrPJT_category(String rPJT_category) {
		this.rPJT_category = rPJT_category;
	}
	public String getrPJT_paper() {
		return rPJT_paper;
	}
	public void setrPJT_paper(String rPJT_paper) {
		this.rPJT_paper = rPJT_paper;
	}
	public Date getrPJT_startDay() {
		return rPJT_startDay;
	}
	public void setrPJT_startDay(Date rPJT_startDay) {
		this.rPJT_startDay = rPJT_startDay;
	}
	public Date getrPJT_endDay() {
		return rPJT_endDay;
	}
	public void setrPJT_endDay(Date rPJT_endDay) {
		this.rPJT_endDay = rPJT_endDay;
	}
	
}
