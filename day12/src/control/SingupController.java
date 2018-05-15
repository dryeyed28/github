package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CustomerService;

public class SingupController implements Controller {
	public CustomerService service;
	public SingupController() {}
	public SingupController(CustomerService service) {
		this.service = service;
	}
	
	public CustomerService getService() {
		return service;
	}
	public void setService(CustomerService service) {
		this.service = service;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		return null;
	}
	
	
	
	
	
}
