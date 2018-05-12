package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.CustomerService;

public class LoginServlet extends HttpServlet {
	private CustomerService service = new CustomerService();
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idValue = request.getParameter("id");
		String pwdValue = request.getParameter("pwd");
		
		HttpSession session =
				request.getSession();
		session.invalidate();

		//1)loginresult.jsp에게 응답할 데이터 설정
		try {
			String result = service.login(idValue, pwdValue);
			//세션의 속성으로 "loginInfo", idValue 추가하기				
			if(result.equals("1")) { //로그인 성공:1, 실패:-1
				session = request.getSession();
				session.setAttribute("loginInfo", idValue);
			}
			request.setAttribute("result", result);
		}catch(Exception e) {
			request.setAttribute("result", e.getMessage());
		}
		//2)loginresult.jsp로 이동
		RequestDispatcher rd;
		String forwardURL = "loginresult.jsp";
		rd = request.getRequestDispatcher(forwardURL);
		rd.forward(request, response);
		
	}
}
