package control.funding;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class InvestSerchCategoryController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// investmain.jsp 요청시 db에서 select
		// ajax요청 
		String forwardURL = "investserchcategoryrslt.jsp";
		return forwardURL;
	}

}
