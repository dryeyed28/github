package control.mypage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class NickNameCheckController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		//signup.jsp에서 닉네임 값 가져와서 db에 비교
		String forwardURL = "nicknamecheckrslt.jsp";
		return forwardURL;
	}

}
