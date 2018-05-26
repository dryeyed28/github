package control.mypage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class IdCheckController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		//signup.jsp에서 id값 가져와서 db에서 select
		// ajax요청사용
		String forwardURL = "idcheckrslt.jsp";
		return forwardURL;
	}

}
