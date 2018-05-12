package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.RepBoardService;
import vo.RepBoard;

public class RepBoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     public RepBoardService service = new RepBoardService(); 
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int page = Integer.parseInt(request.getParameter("page"));
		try {
			List<RepBoard> list = service.findAll(page);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
