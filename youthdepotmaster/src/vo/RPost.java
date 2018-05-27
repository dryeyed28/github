package vo;

import java.util.Date;

public class RPost {
	private RProject rProject;
	private String rPost_content;
	private String rPost_userID;
	private Date rPost_dateTime;
	private Date rPost_updated_dateTime;
	private int rPost_comment_count;
	public RPost() {
		super();
	}
	public RPost(RProject rProject, String rPost_content, String rPost_userID, Date rPost_dateTime,
			Date rPost_updated_dateTime, int rPost_comment_count) {
		super();
		this.rProject = rProject;
		this.rPost_content = rPost_content;
		this.rPost_userID = rPost_userID;
		this.rPost_dateTime = rPost_dateTime;
		this.rPost_updated_dateTime = rPost_updated_dateTime;
		this.rPost_comment_count = rPost_comment_count;
	}
	public RProject getrProject() {
		return rProject;
	}
	public void setrProject(RProject rProject) {
		this.rProject = rProject;
	}
	public String getrPost_content() {
		return rPost_content;
	}
	public void setrPost_content(String rPost_content) {
		this.rPost_content = rPost_content;
	}
	public String getrPost_userID() {
		return rPost_userID;
	}
	public void setrPost_userID(String rPost_userID) {
		this.rPost_userID = rPost_userID;
	}
	public Date getrPost_dateTime() {
		return rPost_dateTime;
	}
	public void setrPost_dateTime(Date rPost_dateTime) {
		this.rPost_dateTime = rPost_dateTime;
	}
	public Date getrPost_updated_dateTime() {
		return rPost_updated_dateTime;
	}
	public void setrPost_updated_dateTime(Date rPost_updated_dateTime) {
		this.rPost_updated_dateTime = rPost_updated_dateTime;
	}
	public int getrPost_comment_count() {
		return rPost_comment_count;
	}
	public void setrPost_comment_count(int rPost_comment_count) {
		this.rPost_comment_count = rPost_comment_count;
	}
	
}
