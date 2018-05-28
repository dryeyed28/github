package control.apply;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.YouthDepotController;
import service.RewardService;
import vo.RApply;

public class RewardInsertController implements YouthDepotController {
	private RewardService service;

	public RewardService getService() {
		return service;
	}

	public void setService(RewardService service) {
		this.service = service;
	}
	
	public RewardInsertController() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		// rewardapplication.jsp에서 데이터 받은걸 insert
		String a = request.getParameter("a");
		RApply rApply = new RApply();
		try {
			System.out.println("RewardInsertController seccec");
			service.applyinsert(rApply);
		} catch (Exception e) {
			System.out.println("RewardInsertControllert fale");
			e.printStackTrace();
		}
		String forwardURL = "redirect:keeperindext.jsp";
		return forwardURL;
	}

}
