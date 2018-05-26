package control.borad;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class UserBoardListController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// boardlist.jsp 페이지 요청됬을때 호출됨
		// db에 select
		String queryStr = ""; 
		String forwardURL = "redirect:boardlist.jsp?"+ queryStr;
		return forwardURL;
	}

}
