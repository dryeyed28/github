package control.funding;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class PayCheckController implements YouthDepotController{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// payadress.jsp에서  paycheck.jsp 요청시 파라메터 받아옴
		// db에 받아온 파라메터 insert
		// queryString 전달
		String queryStr = ""; // payadress.jsp 에 있던내용
		String forwardURL = "redirect:payadress.jsp?"+ queryStr;
		return forwardURL;
	}
	
}
