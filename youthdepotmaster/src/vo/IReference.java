package vo;

public class IReference {
	private IProject iproject;
	private String iPJT_directions;
	private String iPJT_license;
	private String iPJT_corporate;
	public IReference() {
		super();
	}
	public IReference(IProject iproject, String iPJT_directions, String iPJT_license, String iPJT_corporate) {
		super();
		this.iproject = iproject;
		this.iPJT_directions = iPJT_directions;
		this.iPJT_license = iPJT_license;
		this.iPJT_corporate = iPJT_corporate;
	}
	public IProject getIproject() {
		return iproject;
	}
	public void setIproject(IProject iproject) {
		this.iproject = iproject;
	}
	public String getiPJT_directions() {
		return iPJT_directions;
	}
	public void setiPJT_directions(String iPJT_directions) {
		this.iPJT_directions = iPJT_directions;
	}
	public String getiPJT_license() {
		return iPJT_license;
	}
	public void setiPJT_license(String iPJT_license) {
		this.iPJT_license = iPJT_license;
	}
	public String getiPJT_corporate() {
		return iPJT_corporate;
	}
	public void setiPJT_corporate(String iPJT_corporate) {
		this.iPJT_corporate = iPJT_corporate;
	}
	
}
