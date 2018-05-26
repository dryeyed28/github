package control.borad;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class UserBoardListPageController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// boardlist.jsp 에서 listpage버튼 눌럿을때
		// ajax요청
		String forwardURL = "boardlistpagerslt.jsp";
		return forwardURL;
	}

}
