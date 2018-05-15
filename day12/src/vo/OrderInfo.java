package vo;

import java.util.Date;
import java.util.List;

public class OrderInfo {
	private int info_no;
	private String info_id;
	private Date info_dt;
	private List<OrderLine> lines;
	public OrderInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderInfo(int info_no, String info_id, Date info_dt, List<OrderLine> lines) {
		super();
		this.info_no = info_no;
		this.info_id = info_id;
		this.info_dt = info_dt;
		this.lines = lines;
	}
	public int getInfo_no() {
		return info_no;
	}
	public void setInfo_no(int info_no) {
		this.info_no = info_no;
	}
	public String getInfo_id() {
		return info_id;
	}
	public void setInfo_id(String info_id) {
		this.info_id = info_id;
	}
	public Date getInfo_dt() {
		return info_dt;
	}
	public void setInfo_dt(Date info_dt) {
		this.info_dt = info_dt;
	}
	public List<OrderLine> getLines() {
		return lines;
	}
	public void setLines(List<OrderLine> lines) {
		this.lines = lines;
	}
	@Override
	public String toString() {
		return "OrderInfo [info_no=" + info_no + ", info_id=" + info_id + ", info_dt=" + info_dt + ", lines=" + lines
				+ "]";
	}
	
}
