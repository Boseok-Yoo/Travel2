package kr.co.travel2.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.travel2.dao.MemberDAO;
import kr.co.travel2.domain.BoardDTO;
import kr.co.travel2.domain.Command;
import kr.co.travel2.domain.CommandAction;
import kr.co.travel2.domain.MemberDTO;

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