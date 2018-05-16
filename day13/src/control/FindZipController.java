package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ZipService;
import vo.Zip;

public class FindZipController implements Controller {
	private ZipService service;
	public FindZipController() {}
	public FindZipController(ZipService service) {
		this.service = service;
	}
	public ZipService getService() {
		return service;
	}
	public void setService(ZipService service) {
		this.service = service;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//request.setCharacterEncoding("UTF-8");
		String forwardURL = "";
		String doro = request.getParameter("doro");
		System.out.println("in servlet:" + doro);
		//response.setContentType("text/html;charset=utf-8");
		//PrintWriter out = response.getWriter();
		
		try {
			List<Zip> list = service.findByDoro(doro);
			
			//1)findzipresult.jsp에게 응답할 데이터 설정
			request.setAttribute("result", list);			
			//2)findzipresult.jsp로 이동
			forwardURL = "findzipresult.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			forwardURL = "error.jsp";
		
		}
		return forwardURL;
	}
}

