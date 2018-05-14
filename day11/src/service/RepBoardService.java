package service;

import java.util.List;

import dao.RepBoardDAO;
import dao.RepBoardDAOOracle;
import vo.RepBoard;

public class RepBoardService {
	private RepBoardDAO dao = new RepBoardDAOOracle();
	public int findCount() throws Exception{
		return dao.selectCount();
	}
	public List<RepBoard> findAll(int page) throws Exception{
		return dao.selectAll(page);
	}
	public void write(RepBoard board)  throws Exception{
		dao.insertRepBoard(board);
	}
}
