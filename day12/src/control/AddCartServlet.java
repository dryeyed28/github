package control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.ProductService;
import vo.Product;

public class AddCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductService service = new ProductService();
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Map<Product, Integer> cart = 
				(Map)session.getAttribute("cart");		
		if(cart == null) {
			cart = new HashMap<Product, Integer>();
			session.setAttribute("cart", cart);
		}
		int code = Integer.parseInt(request.getParameter("code"));
		try {
			Product key = service.findByNo(code);
			int value = Integer.parseInt(request.getParameter("quantity"));
			Integer quantity1 = cart.get(key);			
			if(quantity1 != null) {		
			  System.out.println("기존수량:" + quantity1 +", 누적수량:"+ value);	
			  cart.put(key, quantity1+value);
			}else {
			  System.out.println("없는 상품:" + value);
			  cart.put(key, value);
			}
			request.setAttribute("result", "1");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("result", "-1");
		}
		RequestDispatcher rd;
		String forwardURL = "addcartresult.jsp";
		rd = request.getRequestDispatcher(forwardURL);
		rd.forward(request, response);		
	}
}
