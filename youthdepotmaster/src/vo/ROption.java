package vo;

import java.util.Date;

public class ROption {
	private RProject rProject;
	private int reward_id;
	private int rPJT_price;
	private String rPJT_name;
	private String rPJT_detail;
	private String rPJT_limit;
	private Date rPJT_send;
	public ROption() {
		super();
	}
	public ROption(RProject rProject, int reward_id, int rPJT_price, String rPJT_name, String rPJT_detail,
			String rPJT_limit, Date rPJT_send) {
		super();
		this.rProject = rProject;
		this.reward_id = reward_id;
		this.rPJT_price = rPJT_price;
		this.rPJT_name = rPJT_name;
		this.rPJT_detail = rPJT_detail;
		this.rPJT_limit = rPJT_limit;
		this.rPJT_send = rPJT_send;
	}
	public RProject getrProject() {
		return rProject;
	}
	public void setrProject(RProject rProject) {
		this.rProject = rProject;
	}
	public int getReward_id() {
		return reward_id;
	}
	public void setReward_id(int reward_id) {
		this.reward_id = reward_id;
	}
	public int getrPJT_price() {
		return rPJT_price;
	}
	public void setrPJT_price(int rPJT_price) {
		this.rPJT_price = rPJT_price;
	}
	public String getrPJT_name() {
		return rPJT_name;
	}
	public void setrPJT_name(String rPJT_name) {
		this.rPJT_name = rPJT_name;
	}
	public String getrPJT_detail() {
		return rPJT_detail;
	}
	public void setrPJT_detail(String rPJT_detail) {
		this.rPJT_detail = rPJT_detail;
	}
	public String getrPJT_limit() {
		return rPJT_limit;
	}
	public void setrPJT_limit(String rPJT_limit) {
		this.rPJT_limit = rPJT_limit;
	}
	public Date getrPJT_send() {
		return rPJT_send;
	}
	public void setrPJT_send(Date rPJT_send) {
		this.rPJT_send = rPJT_send;
	}
	
}
