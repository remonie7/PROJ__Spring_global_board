package com.signal.board;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.signal.board.model.BoardVO;
import com.signal.board.service.BoardService;
import com.signal.board.service.IBoardService;



public class BoardMain {

	public static void main(String[] args) {

		AbstractApplicationContext context = 
				new GenericXmlApplicationContext("application-config.xml"); 
			IBoardService boardService = 
					context.getBean("boardService", IBoardService.class); 
			
			context.close();
	}
}





