package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CustomerService;

public class DupChkController implements Controller {
	private CustomerService service;
	public DupChkController() {}
	public DupChkController(CustomerService service) {
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
		response.setContentType("text/html;charset=utf-8");
		String idValue = request.getParameter("id");
		PrintWriter out = response.getWriter();
		
		try {
			String result = service.dupChk(idValue);
			request.setAttribute("result", result);
		}catch(Exception e) {
			request.setAttribute("result", e.getMessage());
		}
		String forwardURL = "dupchkresult.jsp";
		return forwardURL;
	}
	
	

}
