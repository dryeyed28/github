package vo;

public class Board {
	private int brd_id;
	private String brd_key;
	private String brd_name;
	public Board() {
		super();
	}
	public Board(int brd_id, String brd_key, String brd_name) {
		super();
		this.brd_id = brd_id;
		this.brd_key = brd_key;
		this.brd_name = brd_name;
	}
	public int getBrd_id() {
		return brd_id;
	}
	public void setBrd_id(int brd_id) {
		this.brd_id = brd_id;
	}
	public String getBrd_key() {
		return brd_key;
	}
	public void setBrd_key(String brd_key) {
		this.brd_key = brd_key;
	}
	public String getBrd_name() {
		return brd_name;
	}
	public void setBrd_name(String brd_name) {
		this.brd_name = brd_name;
	}
		
}
