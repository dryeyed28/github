package control.mng;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class MngShowNumController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
//		// projectrequest.jsp 에서 show버튼
//		// db select
//		// ajax요청
		String forwardURL = "applyshownumrslt.jsp";
		return forwardURL;
//		// member.jsp 에서 확인버튼
//		// db select
//		// ajax요청
//		String forwardURL = "membershownumrslt.jsp";
//		return forwardURL;
//		// totalpay.jsp 에서 show버튼
//		// db select
//		// ajax요청
//		String forwardURL = "totalpayshownumrslt.jsp";
//		return forwardURL;
//		// yeoljeongpay.jsp 에서 show버튼
//		// db select
//		// ajax요청
//		String forwardURL = "yeoljeongpayshownumrslt.jsp";
//		return forwardURL;
//		// profit.jsp 에서 show버튼
//		// db select
//		// ajax요청
//		String forwardURL = "profitshownumrslt.jsp";
//		return forwardURL;
	}

}
