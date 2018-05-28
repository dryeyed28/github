package service;

import dao.RewardDAOOracle;
import vo.RApply;

public class RewardService {
	RewardDAOOracle dao = new RewardDAOOracle();
	public void applyinsert(RApply rApply) throws Exception {
		dao.apllyinsert(rApply);
	}
}
