package control.mypage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class LoginController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// login.html 에서 id, pwd 가져와서 db에서 셀렉트 비교
		// 로그인 성공하면 session에 id값 세팅
		String forwardURL = "redirect:index.jsp";
		return forwardURL;
	}

}
