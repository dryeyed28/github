package dao;

import java.util.List;

import vo.RepBoard;

public interface RepBoardDAO {
	List<RepBoard> selectAll(int page) throws Exception;
	void insertRepBoard(RepBoard board) throws Exception;
	int selectCount() throws Exception;
}
