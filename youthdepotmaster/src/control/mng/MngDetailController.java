package control.mng;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class MngDetailController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
//		// projectrequest.jsp 에서 프로젝트 상세로 이동
		String queryStr = ""; // 프로젝트번호번호
		String forwardURL = "redirect:projectdetail.jsp?"+ queryStr;
		return forwardURL;
//		// board1.jsp 에서 이동버튼 클릭
//		String queryStr = ""; // 글번호
//		String forwardURL = "redirect:boardview.jsp?"+ queryStr;
//		return forwardURL;
//		// profit.jsp 에서 이동버튼 클릭
//		String queryStr = ""; // 글번호
//		String forwardURL = "redirect:projectdetail.jsp?"+ queryStr;
//		return forwardURL;
		
	}

}
