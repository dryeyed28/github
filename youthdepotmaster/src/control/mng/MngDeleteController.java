package control.mng;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class MngDeleteController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
//		// projectrequest.jsp 에서 삭제버튼
//		// db delet
//		// ajax요청
		String forwardURL = "applydeletrslt.jsp";
		return forwardURL;
//		// tables.jsp에서 삭제버튼
//		// db에 반영
//		// ajax요청
//		String forwardURL = "boarddeleterslt.jsp";
//		return forwardURL;
//		// board1.jsp 에서 삭제버튼
//		// db에 delet
//		// ajax요청
//		String forwardURL = "postdeletrslt.jsp";
//		return forwardURL;
//		// spam.jsp 삭제버튼
//		// db에 delet
//		// ajax요청
//		String forwardURL = "sapmdeletrslt.jsp";
//		return forwardURL;
//		// Member.jsp 에서 삭제버튼
//		// db에 delet
//		// ajax요청
//		String forwardURL = "memberdeletrslt.jsp";
//		return forwardURL;
//		// totalpay.jsp 에서 삭제버튼
//		// db에 delet
//		// ajax요청
//		String forwardURL = "totalpaydeletrslt.jsp";
//		return forwardURL;
//		// yeoljeongpay.jsp 에서 삭제버튼
//		// db에 delet
//		// ajax요청
//		String forwardURL = "yeoljeongpaydeletrslt.jsp";
//		return forwardURL;
//		// profit.jsp 에서 삭제버튼
//		// db에 delet
//		// ajax요청
//		String forwardURL = "profitdeletrslt.jsp";
//		return forwardURL;
	}

}
