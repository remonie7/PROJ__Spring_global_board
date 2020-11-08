package com.signal.board.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.signal.board.model.BoardVO;
import com.signal.board.service.IBoardService;

@Controller
public class BoardController {

	@Autowired
	IBoardService BoardService;

	@RequestMapping(value = "/board/list")
	public String getAllBoards(Model model) {
		List<BoardVO> boardList = BoardService.getListBoard();
		model.addAttribute("boardList", boardList);
		return "board/list";
	}

	@RequestMapping(value = "/board/{boardId}")
	public String getBoardInfo(@PathVariable int boardId, Model model) {
		BoardVO board = BoardService.getBoardInfo(boardId);
		model.addAttribute("board", board);

		return "board/view";
	}

	@RequestMapping(value = "/board/insert", method = RequestMethod.GET)
	public String insertBoard(Model model) {
		return "board/insertform";
	}

	@RequestMapping(value = "/board/insert", method = RequestMethod.POST)
	public String insertBoard(BoardVO board, Model model) {
		BoardService.insertBoard(board);
		return "redirect:/board/list";
	}

	@RequestMapping(value = "/board/update", method = RequestMethod.GET)
	public String updateBoard(int boardid, Model model) {
		model.addAttribute("board", BoardService.getBoardInfo(boardid));
		return "board/updateform";
	}

	@RequestMapping(value = "/board/update", method = RequestMethod.POST)
	public String updateBoard(BoardVO board, Model model) {

		BoardService.updateBoard(board);
		return "redirect:/board/" + board.getBoardId();
	}

	@RequestMapping(value = "/board/delete", method = RequestMethod.GET)
	public String deleteEmp(int boardid, Model model) {
		BoardVO board = BoardService.getBoardInfo(boardid);
		model.addAttribute("board", board);
		model.addAttribute("board", BoardService.getBoardInfo(boardid));
		return "board/deleteform";
	}

	@RequestMapping(value = "/board/delete", method = RequestMethod.POST)
	public String deleteBoard(int boardid, String writer, Model model) {
		BoardVO board = BoardService.getBoardInfo(boardid);
		model.addAttribute("board", board);

		BoardService.deleteBoard(boardid, writer);
		return "redirect:/board";
	}
}
