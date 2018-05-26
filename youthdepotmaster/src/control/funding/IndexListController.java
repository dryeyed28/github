package control.funding;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;

public class IndexListController implements YouthDepotController {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// index.jsp 요청시 db에서 뿌려줄값 select
		// db에 select 
		// request 전달
		String forwardURL = "index.jsp";
		return forwardURL;
	}

}
