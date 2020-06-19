package kr.co.travel2.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.travel2.dao.MemberDAO;
import kr.co.travel2.domain.Command;
import kr.co.travel2.domain.CommandAction;
import kr.co.travel2.domain.MemberDTO;

public class UpdateMemberCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String sAge = request.getParameter("age");
		int age = 0;
		if (sAge != null) {
			age = Integer.parseInt(sAge);
		}
		String pw = request.getParameter("pw");
		
		MemberDAO dao = new MemberDAO();
		dao.update(new MemberDTO(id, name, age, pw));
		
		return new CommandAction(true, "selectById.do?id"+id);
	}
}