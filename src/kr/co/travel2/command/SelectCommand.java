package kr.co.travel2.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.travel2.dao.MemberDAO;
import kr.co.travel2.domain.Command;
import kr.co.travel2.domain.CommandAction;
import kr.co.travel2.domain.MemberDTO;

public class SelectCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberDAO dao = new MemberDAO();
		List<MemberDTO> list = dao.selectAll();
		
		request.setAttribute("list", list);
		
		return new CommandAction(false, "list.jsp");
	}
}