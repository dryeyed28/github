package control.borad;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class UserBoradUpdateController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// boardupdate.jsp에서 데이터 받아와서 db에 update
		// 삭제됫을때
		//String queryStr = "";// 글목록페이지번호
		//String forwardURL = "redirect:boardlist.jsp?" + queryStr;
		//return forwardURL;
		// 수정됬을때
		String queryStr = "";// 글번호,글내용등
		String forwardURL = "redirect:boardview.jsp?"+ queryStr;
		return forwardURL;
	}

}
