package kr.co.travel2.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.travel2.dao.BoardDAO;
import kr.co.travel2.domain.BoardDTO;
import kr.co.travel2.domain.Command;
import kr.co.travel2.domain.CommandAction;

public class UpdateUICommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sNum = request.getParameter("num");
		int num = -1;
		if (sNum != null) {
			num = Integer.parseInt(sNum);
		}
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.updateui(num);
		
		request.setAttribute("dto", dto);
		
		return new CommandAction(false, "update.jsp");
	}
}