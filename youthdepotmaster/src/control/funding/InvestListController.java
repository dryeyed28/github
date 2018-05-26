/**
 * 
 */
package control.funding;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class InvestListController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// investmain.jsp 요청시 db에서 셀렉트 해서 값 뿌려주기
		// db에 select
		String queryStr = "";
		String forwardURL = "redirect:investmain.jsp?"+ queryStr;
		return forwardURL;
	}

}
