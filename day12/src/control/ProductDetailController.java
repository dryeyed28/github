package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ProductService;
import vo.Product;

public class ProductDetailController implements Controller {

	private ProductService service;
	
	public ProductDetailController() {}

	public ProductDetailController(ProductService service) {
		this.service = service;
	}

	public ProductService getService() {
		return service;
	}

	public void setService(ProductService service) {
		this.service = service;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String no = request.getParameter("no");
		int product_code = Integer.parseInt(no);
		try {
			Product p = service.findByNo(product_code);
			request.setAttribute("p", p);			
		}catch(Exception e) {
			request.setAttribute("result", e.getMessage());
		}
		String forwardURL = "productdetailresult.jsp";
		
		return forwardURL;
	}

}
