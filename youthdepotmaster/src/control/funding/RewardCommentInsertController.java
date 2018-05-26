package control.funding;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class RewardCommentInsertController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// rewarddetail.jsp 에서 댓글데이터 가져와서 insert
		// ajax요청
		String forwardURL = "commentinsertrslt.jsp";
		return forwardURL;
	}

}
