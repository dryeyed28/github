package control.mypage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class PointAddController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		//mypage에서 충전열정값 가져와서 db에 반영
		// ajax요청
		String forwardURL = "pointaddrslt.jsp";
		return forwardURL;
	}

}
