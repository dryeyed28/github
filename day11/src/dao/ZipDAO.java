package dao;

import java.util.List;

import vo.Zip;

public interface ZipDAO {
	List<Zip> selectByDoro(String doro) throws Exception;
}
