package control.funding;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class RewardSerchController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// rewardmian.jsp 요청시 db에서 select
		// ajax요청 
		String forwardURL = "rewardserchrslt.jsp";
		return forwardURL;
	}

}
