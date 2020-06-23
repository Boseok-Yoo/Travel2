package kr.co.travel2.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.travel2.dao.MemberDAO;
import kr.co.travel2.domain.Command;
import kr.co.travel2.domain.CommandAction;
import kr.co.travel2.domain.LoginDTO;

public class SignoutCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		
		if (session != null) {
			LoginDTO login = (LoginDTO) session.getAttribute("login");
			if (login != null) {
				String id = request.getParameter("id");
				if(login.getId().equals(id)) {
					MemberDAO dao = new MemberDAO();
					dao.signout(id);
					
					session.invalidate();
					return new CommandAction(true, "list.do");
				}else {
					return new CommandAction(true, "login.do");
				}
			}else {
				return new CommandAction(true, "login.do");
			}
		}else{
			return new CommandAction(true, "login.do");
		}
	}
}