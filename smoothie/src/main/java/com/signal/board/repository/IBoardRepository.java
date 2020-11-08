package com.signal.board.repository;

import java.util.List;
import java.util.Map;


import com.signal.board.model.BoardVO;



public interface IBoardRepository {

	List<BoardVO> getListBoard();
	BoardVO getBoardInfo(int boardid);
//	int getCountBoard();
//	int getCountBoard(int deptid);
	
	
	
	
	void updateBoard(BoardVO board);
	void insertBoard(BoardVO board);

	void deleteBoard(int boardid, String writer);
	/*	List<Map<String, Object>> getAllCountryId();
	List<Map<String, Object>> getAllJobId();
			List<Map<String, Object>> getAllManagerId();
*/	
}


