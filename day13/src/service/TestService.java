package service;

public class TestService {
	static private TestService service;
	private int i;
	
	private TestService() {}
	
	public static TestService getInstance() {
		if(service == null) {
			service = new TestService();
		}
		return service;
	}

	public int getI() {
		return i;
	}

	public void setI(int i) {
		this.i = i;
	}
	
	
	
}
