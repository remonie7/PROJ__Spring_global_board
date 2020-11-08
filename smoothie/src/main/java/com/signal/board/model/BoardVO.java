package com.signal.board.model;

import java.sql.Date;

public class BoardVO {





	private int boardId;
	private String boardSubject;
	private String boardContent;
	private String boardWriter;
	private Date boardDate;
	private String boardCountry;
	private String boardJob;

	
	public int getBoardId() {
		return boardId;
	}




	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}




	public String getBoardSubject() {
		return boardSubject;
	}




	public void setBoardSubject(String boardSubject) {
		this.boardSubject = boardSubject;
	}




	public String getBoardContent() {
		return boardContent;
	}




	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}




	public String getBoardWriter() {
		return boardWriter;
	}




	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}




	public Date getBoardDate() {
		return boardDate;
	}




	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}




	public String getBoardCountry() {
		return boardCountry;
	}




	public void setBoardCountry(String boardCountry) {
		this.boardCountry = boardCountry;
	}




	public String getBoardJob() {
		return boardJob;
	}




	public void setBoardJob(String boardJob) {
		this.boardJob = boardJob;
	}

	
	
	

	@Override
	public String toString() {
		return "BoardVO [boardId=" + boardId + ", boardSubject="  + boardSubject
				+ ", boardContent=" + boardContent + ", boardWriter=" + boardWriter+ ", boardDate=" + boardDate + ", boardCountry=" 
				+ boardCountry+ ", boardJob=" + boardJob +  "]";
	}
	
}
