package control.funding;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class InvestCommentUpdateController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// investdetail.jsp 에서 댓글데이터 가져와서 update
		// ajax요청
		String forwardURL = "commentupdaterslt.jsp";
		return forwardURL;
	}

}
