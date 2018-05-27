package vo;

import java.util.Date;

public class IPost {
	private IProject iProject;
	private String iPost_content;
	private String iPost_userID;
	private Date iPost_dateTime;
	private Date iPost_updated_dateTime;
	private int iPost_comment_count;
	public IPost() {
		super();
	}
	public IPost(IProject iProject, String iPost_content, String iPost_userID, Date iPost_dateTime,
			Date iPost_updated_dateTime, int iPost_comment_count) {
		super();
		this.iProject = iProject;
		this.iPost_content = iPost_content;
		this.iPost_userID = iPost_userID;
		this.iPost_dateTime = iPost_dateTime;
		this.iPost_updated_dateTime = iPost_updated_dateTime;
		this.iPost_comment_count = iPost_comment_count;
	}
	public IProject getiProject() {
		return iProject;
	}
	public void setiProject(IProject iProject) {
		this.iProject = iProject;
	}
	public String getiPost_content() {
		return iPost_content;
	}
	public void setiPost_content(String iPost_content) {
		this.iPost_content = iPost_content;
	}
	public String getiPost_userID() {
		return iPost_userID;
	}
	public void setiPost_userID(String iPost_userID) {
		this.iPost_userID = iPost_userID;
	}
	public Date getiPost_dateTime() {
		return iPost_dateTime;
	}
	public void setiPost_dateTime(Date iPost_dateTime) {
		this.iPost_dateTime = iPost_dateTime;
	}
	public Date getiPost_updated_dateTime() {
		return iPost_updated_dateTime;
	}
	public void setiPost_updated_dateTime(Date iPost_updated_dateTime) {
		this.iPost_updated_dateTime = iPost_updated_dateTime;
	}
	public int getiPost_comment_count() {
		return iPost_comment_count;
	}
	public void setiPost_comment_count(int iPost_comment_count) {
		this.iPost_comment_count = iPost_comment_count;
	}
	
}
