package control.borad;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class UserBoardWrietController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		//boardwrite.jsp 에서 값 가져와서 db에 insert
		String queryStr = ""; // 글번호,글내용등
		String forwardURL = "redirect:boardview.jsp?"+ queryStr;
		return forwardURL;
	}

}
