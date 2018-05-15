package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.OrderService;
import vo.OrderInfo;
import vo.OrderLine;
import vo.Product;

public class AddOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private OrderService service = new OrderService();
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String loginInfo = 
				(String)session.getAttribute("loginInfo");
		System.out.println("in addorder.do: sessionid=" + session.getId());
		System.out.println("in addorder.do:loginInfo=" + loginInfo);
		
		//response.setContentType("text/html;charset=utf-8");
		//PrintWriter out = response.getWriter();
		//로그인성공한 사용자가 주문추가한 경우
		if(loginInfo != null) {	
			Map<Product, Integer>cart = 
					(Map)session.getAttribute("cart");
			OrderInfo info = new OrderInfo();
			List<OrderLine> lines = new ArrayList<>();
			
			for(Product p:cart.keySet()) {
				int quantity = cart.get(p);
				OrderLine line = 
					new OrderLine(0, p, quantity);
				lines.add(line);
			}
			info.setLines(lines);
			info.setInfo_id(loginInfo);
			try {
				service.addOrder(info);//주문추가
				session.removeAttribute("cart");//장바구니비우기
				request.setAttribute("status", 1);
			}catch(Exception e) {
				e.printStackTrace();
				request.setAttribute("status", -1);
			}
		}else {
			request.setAttribute("status", 0);
		}
		String forwardURL="addorderresult.jsp"; 
		RequestDispatcher rd =
				request.getRequestDispatcher(forwardURL);
		rd.forward(request, response);
	}

}
