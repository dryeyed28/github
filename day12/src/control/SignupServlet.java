package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CustomerService;
import vo.Customer;

public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CustomerService service = new CustomerService();   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String zipcode = request.getParameter("zipcode");
		String address2 = request.getParameter("address2");
		System.out.println(id+":" + pwd + ":" + name + ":"+zipcode + ":" +address2 );
		
		Customer c = new Customer(id, pwd, name, zipcode, address2);
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String result = "{";
		try {
			service.signup(c);
			result+="\"status\":\"1\"";
		}catch(Exception e) {
			e.printStackTrace();
			result+="\"status\":\"-1\", ";
			result+="\"msg\": \"" + e.getMessage() + "\"";
		}		
		result += "}";
		
		
	}

}
