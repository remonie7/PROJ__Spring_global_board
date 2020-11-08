package com.signal.board.service;


import java.util.List;
import java.util.Map;


import com.signal.board.model.BoardVO;




public interface IBoardService {
	List<BoardVO> getListBoard();
	BoardVO getListBoard(int boardid);
//	int getCountEmp();
//	int getCountEmp(int deptid);
	public BoardVO getBoardInfo(int boardid);
	
	void updateBoard(BoardVO board);
	void insertBoard(BoardVO board);
	void deleteBoard(int boardid, String writer);
//	List<Map<String, Object>> getAllCountryId();
//	List<Map<String, Object>> getAllJobId();
//	List<Map<String, Object>> getAllManagerId();
	
	
	
}
