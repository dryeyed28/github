package vo;

public class PCategory {
	private int pc_code;
	private String pc_name;
	public PCategory() {
		super();
	}
	public PCategory(int pc_code, String pc_name) {
		super();
		this.pc_code = pc_code;
		this.pc_name = pc_name;
	}
	public int getPc_code() {
		return pc_code;
	}
	public void setPc_code(int pc_code) {
		this.pc_code = pc_code;
	}
	public String getPc_name() {
		return pc_name;
	}
	public void setPc_name(String pc_name) {
		this.pc_name = pc_name;
	}
	@Override
	public String toString() {
		return "PCategory [pc_code=" + pc_code + ", pc_name=" + pc_name + "]";
	}
	
	
}
