package com.signal.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.signal.board.model.BoardVO;
import com.signal.board.repository.IBoardRepository;


@Service
public class BoardService implements IBoardService {
	@Autowired
	IBoardRepository reposBoard;
	
	@Override
	public List<BoardVO> getListBoard() {
		return reposBoard.getListBoard();
	}

	@Override
	public BoardVO getListBoard(int boardid) {
		return reposBoard.getBoardInfo(boardid);
	}
	
/*	@Override
	public int getCountBoard() {
		return reposBoard.getCountBoard();
	}

	@Override
	public int getCountBoard(int deptid) {
		return reposEmp.getCountEmp(deptid);
	}
*/
	@Override
	public BoardVO getBoardInfo(int boardid) {
		return reposBoard.getBoardInfo(boardid);
	}
	
	
	
	
	
	
	
	
	@Override
	public void updateBoard(BoardVO board) {
		reposBoard.updateBoard(board);
	}

	@Override
	public void insertBoard(BoardVO board) {
		reposBoard.insertBoard(board);
	}

	@Override
	public void deleteBoard(int boardid, String writer) {
		//System.out.println("서비스 들어오기 성공");
		reposBoard.deleteBoard(boardid, writer);
	}
	/*
@Override
	public List<Map<String, Object>> getAllCountryId() {
		return reposBoard.getAllCountryId();
	}
	
	@Override
	public List<Map<String, Object>> getAllJobId() {
		return reposBoard.getAllJobId();
	}
		
	@Override
	public List<Map<String, Object>> getAllManagerId() {
		return reposBoard.getAllManagerId();
	}
*/
}
