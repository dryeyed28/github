package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ViewCartControllr implements Controller {
	public ViewCartControllr() {}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String forwardURL = "viewcartresult.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(forwardURL);
		
		return forwardURL;
	}
}
