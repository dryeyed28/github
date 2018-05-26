/**
 * 
 */
package control.mypage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class MyPageSerchController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		//session에서 id값 받아와서 db에서 select mypage.jsp에 뿌리기
		String queryStr = ""; 
		String forwardURL = "redirect:mypage.jsp?"+ queryStr;
		return forwardURL;
	}

}
