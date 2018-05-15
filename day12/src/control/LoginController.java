package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.CustomerService;

public class LoginController implements Controller {
	private CustomerService service;
	public LoginController() {}
	public LoginController(CustomerService service) { 
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
		String idValue = request.getParameter("id");
		String pwdValue = request.getParameter("pwd");
		
		HttpSession session =
				request.getSession();
		session.invalidate();
		try {
			String result = service.login(idValue, pwdValue);
			if(result.equals("1")) { //로그인 성공:1, 실패:-1
				session = request.getSession();
				session.setAttribute("loginInfo", idValue);
			}
			request.setAttribute("result", result);
		}catch(Exception e) {
			request.setAttribute("result", e.getMessage());
		}
		String forwardURL = "loginresult.jsp";
		return forwardURL;
	}
}
