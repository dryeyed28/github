package service;

import java.util.List;

import dao.RepBoardDAO;
import dao.RepBoardDAOOracle;
import vo.RepBoard;

public class RepBoardService {
	public RepBoardDAO service = new RepBoardDAOOracle();
	public List<RepBoard> findAll(int page) throws Exception{
		List<RepBoard> list = service.selectAll(page);
		return list;
	}
}
