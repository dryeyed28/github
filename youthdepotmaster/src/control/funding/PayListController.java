package control.funding;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class PayListController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// pay.jsp 요청시 db에서 셀렉트
		// db에 select
		String queryStr = ""; 
		String forwardURL = "redirect:pay.jsp?"+ queryStr;
		return forwardURL;
	}

}