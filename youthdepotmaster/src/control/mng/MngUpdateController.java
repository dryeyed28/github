package control.mng;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class MngUpdateController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
//		// tables.jsp에서 수정버튼
//		// ajax요청
//		String forwardURL = "boardupdatepagerslt.jsp";
//		return forwardURL;
//		// board1.jsp 에서 수정버튼
//		// ajax요청
//		String forwardURL = "postupdaterslt.jsp";
//		return forwardURL;
//		// member.jsp 에서 수정버튼
//		// db update
//		// ajax요청
		String forwardURL = "memberupdaterslt.jsp";
		return forwardURL;
	}

}
