package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.RepBoardService;
import vo.RepBoard;

public class RepBoardWriteController implements Controller {
	private RepBoardService service;
	public RepBoardWriteController() {}
	public RepBoardWriteController(RepBoardService service) {
		this.service = service;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String board_subject = request.getParameter("board_subject");
		String board_writer = request.getParameter("board_writer"); 
		String board_contents= request.getParameter("board_contents");
		String board_password = request.getParameter("board_password");
		RepBoard board = new RepBoard();
		board.setBoard_subject(board_subject);
		board.setBoard_writer(board_writer);
		board.setBoard_contents(board_contents);
		board.setBoard_password(board_password);
		try {
			service.write(board);
			request.setAttribute("result", 1);
		}catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("result", -1);
		}
		String forwardURL = "repboardwriteresult.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(forwardURL);
		return forwardURL;
	}
}
