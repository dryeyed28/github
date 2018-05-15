package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.ProductService;

public class EmptyCartController implements Controller {
	private ProductService service;
	public EmptyCartController() {}
	public EmptyCartController(ProductService service) {
		this.service = service;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		session.removeAttribute("cart");
		return null;
	}
}
