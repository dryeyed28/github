package control.mypage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class ZipSerchController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		//signup 에서 파라메터로 주소가져와서 db에서 검색
		// 풀주소 화면에 뿌려줌
		// ajax요청
		String forwardURL = "zipserchrslt.jsp";
		return forwardURL;
	}

}
