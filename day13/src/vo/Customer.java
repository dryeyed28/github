package vo;

public class Customer {
	private String id;
	private String pwd;
	private String name;
	private String zipcode;
	private String address;
	public Customer() {
		super();
	}
	public Customer(String id, String pwd, String name, String zipcode, String address) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.zipcode = zipcode;
		this.address = address;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
