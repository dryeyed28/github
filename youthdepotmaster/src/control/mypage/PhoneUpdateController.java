package control.mypage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class PhoneUpdateController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		//mypage.jsp에서 수정된 phone값 db에 update
		// ajax요청 
		String forwardURL = "phoneupdaterslt.jsp";
		return forwardURL;
	}

}
