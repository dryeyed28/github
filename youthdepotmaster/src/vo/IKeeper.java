package vo;

public class IKeeper {
	private IProject iproject;
	private String corporate_name;
	private String enterprise_type;
	private int enterprise_number;
	private String location;
	private String founded;
	private String representative_name;
	private String invest_email;
	private int invest_tel;
	private int workforce;
	private String invest_url;
	public IKeeper() {
		super();
	}
	public IKeeper(IProject iproject, String corporate_name, String enterprise_type, int enterprise_number,
			String location, String founded, String representative_name, String invest_email, int invest_tel,
			int workforce, String invest_url) {
		super();
		this.iproject = iproject;
		this.corporate_name = corporate_name;
		this.enterprise_type = enterprise_type;
		this.enterprise_number = enterprise_number;
		this.location = location;
		this.founded = founded;
		this.representative_name = representative_name;
		this.invest_email = invest_email;
		this.invest_tel = invest_tel;
		this.workforce = workforce;
		this.invest_url = invest_url;
	}
	public IProject getIproject() {
		return iproject;
	}
	public void setIproject(IProject iproject) {
		this.iproject = iproject;
	}
	public String getCorporate_name() {
		return corporate_name;
	}
	public void setCorporate_name(String corporate_name) {
		this.corporate_name = corporate_name;
	}
	public String getEnterprise_type() {
		return enterprise_type;
	}
	public void setEnterprise_type(String enterprise_type) {
		this.enterprise_type = enterprise_type;
	}
	public int getEnterprise_number() {
		return enterprise_number;
	}
	public void setEnterprise_number(int enterprise_number) {
		this.enterprise_number = enterprise_number;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getFounded() {
		return founded;
	}
	public void setFounded(String founded) {
		this.founded = founded;
	}
	public String getRepresentative_name() {
		return representative_name;
	}
	public void setRepresentative_name(String representative_name) {
		this.representative_name = representative_name;
	}
	public String getInvest_email() {
		return invest_email;
	}
	public void setInvest_email(String invest_email) {
		this.invest_email = invest_email;
	}
	public int getInvest_tel() {
		return invest_tel;
	}
	public void setInvest_tel(int invest_tel) {
		this.invest_tel = invest_tel;
	}
	public int getWorkforce() {
		return workforce;
	}
	public void setWorkforce(int workforce) {
		this.workforce = workforce;
	}
	public String getInvest_url() {
		return invest_url;
	}
	public void setInvest_url(String invest_url) {
		this.invest_url = invest_url;
	}
	
}
