package vo;

public class Product {
	private int product_code;
	private String product_name;
	private int price;
	private int ea;
	private PCategory pcategory;
	public Product() {
		super();
	}
	public Product(int product_code, String product_name, int price, int ea, PCategory pcategory) {
		super();
		this.product_code = product_code;
		this.product_name = product_name;
		this.price = price;
		this.ea = ea;
		this.pcategory = pcategory;
	}
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getEa() {
		return ea;
	}
	public void setEa(int ea) {
		this.ea = ea;
	}
	public PCategory getPcategory() {
		return pcategory;
	}
	public void setPcategory(PCategory pcategory) {
		this.pcategory = pcategory;
	}
	@Override
	public String toString() {
		return "Product [product_code=" + product_code + ", product_name=" + product_name + ", price=" + price + ", ea="
				+ ea + ", pcategory=" + pcategory + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + product_code;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		if (product_code != other.product_code)
			return false;
		return true;
	}
	
	
}
