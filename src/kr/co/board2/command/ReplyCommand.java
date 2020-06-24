package kr.co.board2.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.dao.Board2DAO;
import kr.co.domain.BoardDTO;
import kr.co.domain.Command;
import kr.co.domain.CommandAction;

public class ReplyCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sNum = request.getParameter("num");
		int orgnum = -1;
		if (sNum != null) {
			orgnum = Integer.parseInt(sNum);
		}
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String location = request.getParameter("location");
		
		
		Board2DAO dao = new Board2DAO();
		BoardDTO dto = new BoardDTO(-1, writer, title, content, null, location, 0, 0, 0, 0);		
		dao.reply(orgnum, dto);
		
		return new CommandAction(true, "list.do");
	}
}