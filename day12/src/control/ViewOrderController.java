package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.OrderService;
import vo.OrderInfo;

public class ViewOrderController implements Controller {
	private OrderService service;
	public ViewOrderController(){}
	public ViewOrderController(OrderService service) {
		this.service = service;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String loginInfo = (String)session.getAttribute("loginInfo");		 
		try {
			List<OrderInfo>infos = service.findById(loginInfo);
			request.setAttribute("infos", infos);
		} catch (Exception e) {
			request.setAttribute("result", e.getMessage());
		}
		String forwardURL = "vieworderresult.jsp";
		return forwardURL;
		}
}