package control.mng;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class MngUpdatePageController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
//		// memberdetail.jsp 에서 수정버튼
//		// db update
//		// ajax요청
//		String forwardURL = "memberdetailupdaterslt.jsp";
//		return forwardURL;
//		// makeboard.jsp 에서 수정버튼
//		// db에 update
//		// ajax요청
//		String forwardURL = "boardupdaterslt.jsp";
//		return forwardURL;
//		// edit.jsp에서 수정버튼
//		// db에 update
//		// ajax요청
		String forwardURL = "editupdaterslt.jsp";
		return forwardURL;
	}

}
