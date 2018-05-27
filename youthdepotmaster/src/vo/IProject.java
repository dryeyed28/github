package vo;

import java.util.Date;

public class IProject {
	private int iPJT_id;
	private int mem_id;
	private String iPJT_key;
	private String iPJT_state;
	private String iPJT_progress;
	private Date iPJT_submission;
	public IProject() {
		super();
	}
	public IProject(int iPJT_id, int mem_id, String iPJT_key, String iPJT_state, String iPJT_progress,
			Date iPJT_submission) {
		super();
		this.iPJT_id = iPJT_id;
		this.mem_id = mem_id;
		this.iPJT_key = iPJT_key;
		this.iPJT_state = iPJT_state;
		this.iPJT_progress = iPJT_progress;
		this.iPJT_submission = iPJT_submission;
	}
	public int getiPJT_id() {
		return iPJT_id;
	}
	public void setiPJT_id(int iPJT_id) {
		this.iPJT_id = iPJT_id;
	}
	public int getMem_id() {
		return mem_id;
	}
	public void setMem_id(int mem_id) {
		this.mem_id = mem_id;
	}
	public String getiPJT_key() {
		return iPJT_key;
	}
	public void setiPJT_key(String iPJT_key) {
		this.iPJT_key = iPJT_key;
	}
	public String getiPJT_state() {
		return iPJT_state;
	}
	public void setiPJT_state(String iPJT_state) {
		this.iPJT_state = iPJT_state;
	}
	public String getiPJT_progress() {
		return iPJT_progress;
	}
	public void setiPJT_progress(String iPJT_progress) {
		this.iPJT_progress = iPJT_progress;
	}
	public Date getiPJT_submission() {
		return iPJT_submission;
	}
	public void setiPJT_submission(Date iPJT_submission) {
		this.iPJT_submission = iPJT_submission;
	}
	
}
