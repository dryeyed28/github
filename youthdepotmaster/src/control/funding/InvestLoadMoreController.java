package control.funding;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class InvestLoadMoreController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// investmain.jsp 에서 값가져와서 db에서 셀렉트
		// ajax 요청
		String forwardURL = "investloadmorerslt.jsp";
		return forwardURL;
	}

}
