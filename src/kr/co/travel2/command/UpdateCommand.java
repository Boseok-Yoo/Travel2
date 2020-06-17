package kr.co.travel2.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.travel2.dao.BoardDAO;
import kr.co.travel2.domain.BoardDTO;
import kr.co.travel2.domain.Command;
import kr.co.travel2.domain.CommandAction;

public class UpdateCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sNum = request.getParameter("num");
		int num = -1;
		if (sNum != null) {
			num = Integer.parseInt(sNum);
		}
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String location = request.getParameter("location");

		BoardDAO dao = new BoardDAO();
		dao.update(new BoardDTO(num, writer, title, content, null, location, 0, 0, 0, 0));

		return new CommandAction(true, "list.do");
	}
}