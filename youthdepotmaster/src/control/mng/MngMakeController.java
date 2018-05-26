package control.mng;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class MngMakeController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
//		// makeboard.jsp
//		// db에 insert
//		// ajax요청
//		String forwardURL = "makeboardrslt.jsp";
//		return forwardURL;
//		// edit.jsp에서 확인버튼
//		// db에 inset
//		// ajax요청
		String forwardURL = "editaddrslt.jsp";
		return forwardURL;
	}

}
