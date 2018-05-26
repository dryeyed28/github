package control.mypage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class MyPageBoardController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		//seccion에서 id받아와서 db셀렉트 board.jsp 에 값 뿌려주기
		String queryStr = ""; 
		String forwardURL = "redirect:board.jsp?"+ queryStr;
		return forwardURL;
	}

}
