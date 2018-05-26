package control.mng;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class MngSerchController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
//		// projectrequest.jsp 에서 검색
//		// db select
//		// ajax요청
		String forwardURL = "applyserchrslt.jsp";
		return forwardURL;
//		// board1.jsp 에서 검색
//		// db에 select
//		// ajax요청
//		String forwardURL = "postserchrslt.jsp";
//		return forwardURL;
//		// member.jsp 에서 검색
//		// db select
//		// ajax요청
//		String forwardURL = "memberserchrslt.jsp";
//		return forwardURL;
//		// totalpay.jsp 에서 검색
//		// db select
//		// ajax요청
//		String forwardURL = "totalpayserchrslt.jsp";
//		return forwardURL;
//		// yeoljeongpay.jsp 에서 검색
//		// db select
//		// ajax요청
//		String forwardURL = "yeoljeongpayserchrslt.jsp";
//		return forwardURL;
//		// profit.jsp 에서 검색
//		// db select
//		// ajax요청
//		String forwardURL = "profitserchrslt.jsp";
//		return forwardURL;
	}

}
