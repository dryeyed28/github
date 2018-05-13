package service;

import java.util.List;

import dao.RepBoardDAO;
import dao.RepBoardDAOOracle;
import vo.RepBoard;

public class RepBoardService {
	public RepBoardDAO dao = new RepBoardDAOOracle();
	public List<RepBoard> findAll(int page) throws Exception{
		return dao.selectAll(page);
	}
	public int findCount() throws Exception{
		return dao.selectCount();		
	}
	public void write(RepBoard board) throws Exception{
		dao.insertRepBoard(board);
	}
}
