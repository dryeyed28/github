package control.mng;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class IndexListController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// index.jsp 요청
		// db에 select
		String queryStr = ""; 
		String forwardURL = "redirect:index.jsp?"+ queryStr;//관리자 인덱스
		return forwardURL;
	}

}
