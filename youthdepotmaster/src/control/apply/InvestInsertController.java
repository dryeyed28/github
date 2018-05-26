package control.apply;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class InvestInsertController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// investapplication.jsp에서 데이터 받은걸 insert
		String forwardURL = "redirect:keeperindext.jsp";
		return forwardURL;
	}

}
