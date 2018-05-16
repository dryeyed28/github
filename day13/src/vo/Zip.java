package vo;

public class Zip {
	private String zipcode;
	private String sido;
	private String sigungu;
	private String eupmyun;
	private String doro;
	private String boundary;
	public Zip() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Zip(String zipcode, String sido, String sigungu, String eupmyun, String doro, String boundary) {
		super();
		this.zipcode = zipcode;
		this.sido = sido;
		this.sigungu = sigungu;
		this.eupmyun = eupmyun;
		this.doro = doro;
		this.boundary = boundary;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getSido() {
		return sido;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	public String getSigungu() {
		return sigungu;
	}
	public void setSigungu(String sigungu) {
		this.sigungu = sigungu;
	}
	public String getEupmyun() {
		return eupmyun;
	}
	public void setEupmyun(String eupmyun) {
		this.eupmyun = eupmyun;
	}
	public String getDoro() {
		return doro;
	}
	public void setDoro(String doro) {
		this.doro = doro;
	}
	public String getBoundary() {
		return boundary;
	}
	public void setBoundary(String boundary) {
		this.boundary = boundary;
	}
	
}
