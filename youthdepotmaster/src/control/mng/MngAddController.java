package control.mng;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class MngAddController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
//		// tables.jsp
//		// ajax요청
//		String forwardURL = "makeboard.jsp";
//		return forwardURL;
//		// board1.jsp 에서 글쓰기버튼
//		// ajax요청
		String forwardURL = "postaddrslt.jsp";
		return forwardURL;
	}

}
