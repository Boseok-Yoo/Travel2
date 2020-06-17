package kr.co.travel2.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.travel2.dao.BoardDAO;
import kr.co.travel2.domain.BoardDTO;
import kr.co.travel2.domain.Command;
import kr.co.travel2.domain.CommandAction;

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
		
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = new BoardDTO(-1, writer, title, content, null, location, 0, 0, 0, 0);		
		dao.reply(orgnum, dto);
		
		return new CommandAction(true, "list.do");
	}
}