package control.mng;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class MngListController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
//		// projectrequest.jsp 요청
//		// db에 select
		String queryStr = "";
		String forwardURL = "redirect:boardview.jsp?"+ queryStr;
		return forwardURL;
//		// talbes.jsp 요청 db에 select
//		String queryStr = "";
//		String forwardURL = "redirect:tables.jsp"+ queryStr;
//		return forwardURL;
//		// board1.jsp 요청시 db select
//		String queryStr = "";
//		String forwardURL = "redirect:board1.jsp"+ queryStr;
//		return forwardURL;
//		// spam.jsp 요청시 db에서 select
//		String queryStr = ""; // 표
//		String forwardURL = "redirect:spam.jsp?"+ queryStr;
//		return forwardURL;
//		// member.jsp 에서 확인버튼
//		// db update
//		// ajax요청
//		String queryStr = ""; // 표
//		String forwardURL = "redirect:member.jsp?"+ queryStr;
//		return forwardURL;
//		// totalpay.jsp 에서 확인버튼
//		// db update
//		// ajax요청
//		String queryStr = ""; // 표
//		String forwardURL = "redirect:totalpay.jsp?"+ queryStr;
//		return forwardURL;
//		// yeoljeongpay.jsp 에서 확인버튼
//		// db update
//		// ajax요청
//		String queryStr = ""; // 표
//		String forwardURL = "redirect:yeoljeongpay.jsp?"+ queryStr;
//		return forwardURL;
//		// profit.jsp 에서 확인버튼
//		// db update
//		// ajax요청
//		String queryStr = ""; // 표
//		String forwardURL = "redirect:profit.jsp?"+ queryStr;
//		return forwardURL;
	}

}
