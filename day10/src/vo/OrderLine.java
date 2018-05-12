package vo;

public class OrderLine {
	private int line_no;
	private Product line_product;
	private int line_quantity;
	public OrderLine() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderLine(int line_no, Product line_product, int line_quantity) {
		super();
		this.line_no = line_no;
		this.line_product = line_product;
		this.line_quantity = line_quantity;
	}
	public int getLine_no() {
		return line_no;
	}
	public void setLine_no(int line_no) {
		this.line_no = line_no;
	}
	public Product getLine_product() {
		return line_product;
	}
	public void setLine_product(Product line_product) {
		this.line_product = line_product;
	}
	public int getLine_quantity() {
		return line_quantity;
	}
	public void setLine_quantity(int line_quantity) {
		this.line_quantity = line_quantity;
	}
	@Override
	public String toString() {
		return "OrderLine [line_no=" + line_no + ", line_product=" + line_product + ", line_quantity=" + line_quantity
				+ "]";
	}
	
}
