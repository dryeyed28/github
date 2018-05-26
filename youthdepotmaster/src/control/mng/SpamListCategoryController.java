package control.mng;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class SpamListCategoryController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// spam.jsp 카테고리 콤보박스
		// db에 select
		// ajax요청
		String forwardURL = "sapmserchrslt.jsp";
		return forwardURL;
	}

}
