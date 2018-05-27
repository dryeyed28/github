package vo;

import java.util.Date;

public class IComment {
	private int iCMT_id;
	private String iCMT_parent;
	private IProject iProject;
	private int mem_id;
	private String iCMT_nickname;
	private String iCMT_content;
	private Date iCMT_update_dateTime;
	/*rCMT_dle 0.false 1.true(삭제)*/
	private int iCMT_dle;
	public IComment() {
		super();
	}
	public IComment(int iCMT_id, String iCMT_parent, IProject iProject, int mem_id, String iCMT_nickname,
			String iCMT_content, Date iCMT_update_dateTime, int iCMT_dle) {
		super();
		this.iCMT_id = iCMT_id;
		this.iCMT_parent = iCMT_parent;
		this.iProject = iProject;
		this.mem_id = mem_id;
		this.iCMT_nickname = iCMT_nickname;
		this.iCMT_content = iCMT_content;
		this.iCMT_update_dateTime = iCMT_update_dateTime;
		this.iCMT_dle = iCMT_dle;
	}
	public int getiCMT_id() {
		return iCMT_id;
	}
	public void setiCMT_id(int iCMT_id) {
		this.iCMT_id = iCMT_id;
	}
	public String getiCMT_parent() {
		return iCMT_parent;
	}
	public void setiCMT_parent(String iCMT_parent) {
		this.iCMT_parent = iCMT_parent;
	}
	public IProject getiProject() {
		return iProject;
	}
	public void setiProject(IProject iProject) {
		this.iProject = iProject;
	}
	public int getMem_id() {
		return mem_id;
	}
	public void setMem_id(int mem_id) {
		this.mem_id = mem_id;
	}
	public String getiCMT_nickname() {
		return iCMT_nickname;
	}
	public void setiCMT_nickname(String iCMT_nickname) {
		this.iCMT_nickname = iCMT_nickname;
	}
	public String getiCMT_content() {
		return iCMT_content;
	}
	public void setiCMT_content(String iCMT_content) {
		this.iCMT_content = iCMT_content;
	}
	public Date getiCMT_update_dateTime() {
		return iCMT_update_dateTime;
	}
	public void setiCMT_update_dateTime(Date iCMT_update_dateTime) {
		this.iCMT_update_dateTime = iCMT_update_dateTime;
	}
	public int getiCMT_dle() {
		return iCMT_dle;
	}
	public void setiCMT_dle(int iCMT_dle) {
		this.iCMT_dle = iCMT_dle;
	}
	
}
