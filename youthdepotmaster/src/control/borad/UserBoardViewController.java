package control.borad;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class UserBoardViewController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// boardlist.jsp 에서 게시글 번호 받아와서 db에서 셀렉트
		// request로 데이터전달
		// 게시한사람 본인이면 수정,삭제 버튼 보여줌
		String forwardURL = "boardview.jsp";
		return forwardURL;
	}

}
