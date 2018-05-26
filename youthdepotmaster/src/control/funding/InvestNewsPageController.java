package control.funding;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class InvestNewsPageController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// investdetail.jsp 에서 새소식 newspage 버튼 
		// ajax요청
		String forwardURL = "newsrslt.jsp";
		return forwardURL;
	}

}
