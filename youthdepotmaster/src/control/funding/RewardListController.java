package control.funding;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class RewardListController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// rewardmian.jsp 요청시 db에서 select 해서
		// reqest 전달
		String queryStr = "";
		String forwardURL = "redirect:rewardmian.jsp?"+ queryStr;
		return forwardURL;
	}

}
