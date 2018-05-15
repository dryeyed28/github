package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ProductService;
import vo.Product;

public class ProductListController implements Controller {
	
	private ProductService service;
	
	public ProductListController(ProductService service) {
		this.service = service;
	}
	
	public ProductListController() {}
	
	public ProductService getService() {
		return service;
	}

	public void setService(ProductService service) {
		this.service = service;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String searchItem=request.getParameter("searchItem");
		String searchValue=request.getParameter("searchValue");
		if(searchItem == null || searchValue==null||
		   searchItem.equals("") || searchValue.equals("")) {
			try {
				List<Product>list = service.findAll();
				request.setAttribute("list", list);
			} catch (Exception e) {
				request.setAttribute("result", e.getMessage());
			}					
		}else {			
			if(searchItem.equals("no")) {//상품번호로 검색	
				try {
					int value = Integer.parseInt(searchValue);
					Product p =service.findByNo(value);					
					List<Product>list = new ArrayList<>();			
					list.add(p);
					request.setAttribute("list", list);
				}catch(NumberFormatException e) {
					request.setAttribute("result", "상품번호는 숫자로 입력하세요");
				}catch(Exception e) {
					request.setAttribute("result", e.getMessage());
				}
			}else if(searchItem.equals("name")) {//상품이름으로 검색
				try {
					List<Product>list = service.findByName(searchValue);
					request.setAttribute("list", list);
				}catch(Exception e) {
					request.setAttribute("result", e.getMessage());
				}						
			}			
		}
		String forwardURL = "productlistresult.jsp";
		
		return forwardURL;
	}

}
