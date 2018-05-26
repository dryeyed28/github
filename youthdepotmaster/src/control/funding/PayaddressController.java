package control.funding;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class PayaddressController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// pay.jsp에서  payaddress.jsp 요청시 파라메터 받아옴
		// queryString 전달
		String queryStr = ""; // pay.jsp 에 있던내용
		String forwardURL = "redirect:payadress.jsp?"+ queryStr;
		return forwardURL;
	}

}
