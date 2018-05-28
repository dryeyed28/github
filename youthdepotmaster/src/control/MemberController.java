package control;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.MemberService;
import vo.Member;
import vo.PageBean;

public class MemberController implements YouthDepotController {
	private MemberService service = new MemberService();
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		String page = request.getParameter("page");
		int intPage = 1;
		
		if(page != null) {
			intPage = Integer.parseInt(page);
		}
		
		try {
		int totalCount = service.findCount();
		int totalPage = 0;
		int cntPerPage = 3;
		totalPage = (int)Math.ceil((double)totalCount / cntPerPage);
		
		int cntPerPageGroup = 5;
		int startPage = (int)Math.floor((double)(intPage)/(cntPerPageGroup+1))*cntPerPageGroup+1;
		int endPage = startPage+cntPerPageGroup-1;
		
		if(endPage > totalPage) {
			endPage = totalPage;
		}
		
		List<Member> list = service.findByAll();
		PageBean<Member> pb = new PageBean<>();
		pb.setCurrentPage(intPage);
		pb.setTotalPage(totalPage);
		pb.setList(list);
		pb.setStartPage(startPage);
		pb.setEndPage(endPage);
		
		request.setAttribute("pagebean", pb);
		} catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("result", e.getMessage());
		}
		
		String forwardURL = "memberlistresult.jsp";
		return forwardURL;
	}
}
