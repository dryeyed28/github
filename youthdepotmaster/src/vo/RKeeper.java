package vo;

public class RKeeper {
	private RProject rProject;
	private String r_name;
	private String r_profile;
	private String r_email;
	private String r_url;
	private int r_tel;
	public RKeeper() {
		super();
	}
	public RKeeper(RProject rProject, String r_name, String r_profile, String r_email, String r_url, int r_tel) {
		super();
		this.rProject = rProject;
		this.r_name = r_name;
		this.r_profile = r_profile;
		this.r_email = r_email;
		this.r_url = r_url;
		this.r_tel = r_tel;
	}
	public RProject getrProject() {
		return rProject;
	}
	public void setrProject(RProject rProject) {
		this.rProject = rProject;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public String getR_profile() {
		return r_profile;
	}
	public void setR_profile(String r_profile) {
		this.r_profile = r_profile;
	}
	public String getR_email() {
		return r_email;
	}
	public void setR_email(String r_email) {
		this.r_email = r_email;
	}
	public String getR_url() {
		return r_url;
	}
	public void setR_url(String r_url) {
		this.r_url = r_url;
	}
	public int getR_tel() {
		return r_tel;
	}
	public void setR_tel(int r_tel) {
		this.r_tel = r_tel;
	}
	
}
