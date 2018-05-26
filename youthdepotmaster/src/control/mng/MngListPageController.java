package control.mng;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class MngListPageController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
//		// projectrequest.jsp 에서 page버튼
//		// db select
//		// ajax요청
		String forwardURL = "applylistpagerslt.jsp";
		return forwardURL;
//		// tables.jsp 에서 page버튼 클릭
//		// db select
//		// ajax요청
//		String forwardURL = "boardlistpagerslt.jsp";
//		return forwardURL;
//		// board1.jsp 에서 page버튼 클릭
//		// db select
//		// ajax요청
//		String forwardURL = "postlistpagerslt.jsp";
//		return forwardURL;
//		// spam.jsp 에서 page버튼 클릭
//		// db select
//		// ajax요청
//		String forwardURL = "spamlistpagerslt.jsp";
//		return forwardURL;
//		// member.jsp 에서 page버튼
//		// db select
//		// ajax요청
//		String forwardURL = "memberlistpagerslt.jsp";
//		return forwardURL;
//		// totalpay.jsp 에서 page버튼
//		// db select
//		// ajax요청
//		String forwardURL = "totalpaylistpagerslt.jsp";
//		return forwardURL;
//		// yeoljeongpay.jsp 에서 page버튼
//		// db select
//		// ajax요청
//		String forwardURL = "yeoljeongpaylistpagerslt.jsp";
//		return forwardURL;
//		// profit.jsp 에서 page버튼
//		// db select
//		// ajax요청
//		String forwardURL = "profitlistpagerslt.jsp";
//		return forwardURL;
	}

}
