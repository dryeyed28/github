package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CustomerService;
import vo.Customer;

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
		//request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String zipcode = request.getParameter("zipcode");
		String address2 = request.getParameter("address2");
		System.out.println(id+":" + pwd + ":" + name + ":"+zipcode + ":" +address2 );
		
		Customer c = new Customer(id, pwd, name, zipcode, address2);
		
		
		//String result = "{";
		try {
			service.signup(c);
			request.setAttribute("status", "1");
			//result+="\"status\":\"1\"";
		}catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("status", "-1");
			request.setAttribute("msg", e.getMessage());
			//result+="\"status\":\"-1\", ";
			//result+="\"msg\": \"" + e.getMessage() + "\"";
		}		
		//result += "}";
		//out.print(result);
		String forwardURL = "signupresult.jsp";
		return forwardURL;
	}
}
