package kr.co.board2.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.dao.Board2DAO;
import kr.co.domain.Command;
import kr.co.domain.CommandAction;
import kr.co.dto.Board2DTO;
import kr.co.dto.FileDTO;

public class ReadCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sNum = request.getParameter("num");
		int num = -1;
		if (sNum != null) {
			num = Integer.parseInt(sNum);
		}
		Board2DAO dao = new Board2DAO();	
		Board2DTO dto = dao.read(num);
		FileDTO fdto = dao.readF(num);
		
		request.setAttribute("dto", dto);
		request.setAttribute("fdto", fdto);
		
		return new CommandAction(false, "board2/read.jsp");
	}
}