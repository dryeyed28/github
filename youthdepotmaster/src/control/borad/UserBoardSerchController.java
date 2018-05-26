package control.borad;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class UserBoardSerchController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		//serch 데이터 파라메터로 가져옴
		// db로 보냇서 셀렉트
		// ajax요청
		String forwardURL = "boardlist.jsp";
		return forwardURL;
	}

}
