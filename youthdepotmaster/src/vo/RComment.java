package vo;

import java.util.Date;

public class RComment {
	private int rCMT_id;
	private String rCMT_parent;
	private RProject rProject;
	private int mem_id;
	private String rCMT_nickname;
	private String rCMT_content;
	private Date rCMT_update_dateTime;
	/*rCMT_dle 0.false 1.true(삭제)*/
	private int rCMT_dle;
	public RComment() {
		super();
	}
	public RComment(int rCMT_id, String rCMT_parent, RProject rProject, int mem_id, String rCMT_nickname,
			String rCMT_content, Date rCMT_update_dateTime, int rCMT_dle) {
		super();
		this.rCMT_id = rCMT_id;
		this.rCMT_parent = rCMT_parent;
		this.rProject = rProject;
		this.mem_id = mem_id;
		this.rCMT_nickname = rCMT_nickname;
		this.rCMT_content = rCMT_content;
		this.rCMT_update_dateTime = rCMT_update_dateTime;
		this.rCMT_dle = rCMT_dle;
	}
	public int getrCMT_id() {
		return rCMT_id;
	}
	public void setrCMT_id(int rCMT_id) {
		this.rCMT_id = rCMT_id;
	}
	public String getrCMT_parent() {
		return rCMT_parent;
	}
	public void setrCMT_parent(String rCMT_parent) {
		this.rCMT_parent = rCMT_parent;
	}
	public RProject getrProject() {
		return rProject;
	}
	public void setrProject(RProject rProject) {
		this.rProject = rProject;
	}
	public int getMem_id() {
		return mem_id;
	}
	public void setMem_id(int mem_id) {
		this.mem_id = mem_id;
	}
	public String getrCMT_nickname() {
		return rCMT_nickname;
	}
	public void setrCMT_nickname(String rCMT_nickname) {
		this.rCMT_nickname = rCMT_nickname;
	}
	public String getrCMT_content() {
		return rCMT_content;
	}
	public void setrCMT_content(String rCMT_content) {
		this.rCMT_content = rCMT_content;
	}
	public Date getrCMT_update_dateTime() {
		return rCMT_update_dateTime;
	}
	public void setrCMT_update_dateTime(Date rCMT_update_dateTime) {
		this.rCMT_update_dateTime = rCMT_update_dateTime;
	}
	public int getrCMT_dle() {
		return rCMT_dle;
	}
	public void setrCMT_dle(int rCMT_dle) {
		this.rCMT_dle = rCMT_dle;
	}
	
}
