package control.funding;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class InvestViewController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// investdetailen.jsp 요청시   화면에 뿌려줄값 db에서 셀렉트
		String forwardURL = "investdetaile.jsp";
		return forwardURL;
	}

}
