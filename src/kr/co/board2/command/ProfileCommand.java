package kr.co.board2.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.dao.MemberDAO;
import kr.co.domain.BoardDTO;
import kr.co.domain.Command;
import kr.co.domain.CommandAction;
import kr.co.domain.MemberDTO;

public class ProfileCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.profile(id);
		
		request.setAttribute("dto", dto);

		
		return new CommandAction(false, "profile.jsp");
	}
}