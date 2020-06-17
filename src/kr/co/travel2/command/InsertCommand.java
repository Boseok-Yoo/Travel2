package kr.co.travel2.command;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.travel2.dao.BoardDAO;
import kr.co.travel2.domain.BoardDTO;
import kr.co.travel2.domain.Command;
import kr.co.travel2.domain.CommandAction;

public class InsertCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String location = request.getParameter("location");

		BoardDAO dao = new BoardDAO();
		dao.insert(new BoardDTO(-1, writer, title, content, null, location, 0, 0, 0, 0));

//		for (int i = 0; i < 100; i++) {
//			dao.insert(new BoardDTO(-1, "writer" + i, "title" + i, "content" + i, null, "001", 0, 0, 0, 0));
//			try {
//				Thread.sleep(50);
//			} catch (InterruptedException e) {
//				e.printStackTrace();
//			}
//		}

		return new CommandAction(true, "list.do");
	}
}