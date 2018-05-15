package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ProductService;
import vo.Product;

public class ProductDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductService service = new ProductService();
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String no = request.getParameter("no");
		int product_code = Integer.parseInt(no);
		try {
			Product p = service.findByNo(product_code);
			request.setAttribute("p", p);			
		}catch(Exception e) {
			request.setAttribute("result", e.getMessage());
		}
		String forwardURL = "productdetailresult.jsp";
		RequestDispatcher rd = 
				request.getRequestDispatcher(forwardURL);
		rd.forward(request, response);
		
	}
}
