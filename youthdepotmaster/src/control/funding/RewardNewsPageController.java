package control.funding;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class RewardNewsPageController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// rewarddetail.jsp 에서 newspage버튼 클릭
		// ajax요청
		String forwardURL = "rewardnewspagerslt.jsp";
		return forwardURL;
	}

}
