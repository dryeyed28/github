package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청전달데이터(이름:'opt')가 전달되지 않은경우
		//                      값이 forward인 경우
		//                      값이 include인 경우
		String opt = request.getParameter("opt");
		if(opt == null) {
			show(request, response);
		}else if(opt.equals("forward")) {
			forw(request, response);
		}else if(opt.equals("include")) {
			incl(request, response);
		}else if(opt.equals("redirect")) {
			redi(request, response);
		}
	}
	private void forw(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//페이지 이동
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("This Page is MoveServlet");
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("login.html");
		rd.forward(request, response);
	}
	private void incl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//페이지 포함
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("This Page is MoveServlet");
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("login.html");
		rd.include(request, response);
	}
	private void redi(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.html");
	}
	private void show(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<a href='move.do?opt=forward'>포워드</a>");
		out.print("<br>");
		out.print("<a href='move.do?opt=include'>인클루드</a>");
		out.print("<br>");
		out.print("<a href='move.do?opt=redirect'>리다이렉트</a>");
		
		
	}

}
