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

public class LoginCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		boolean login = new MemberDAO().login(new LoginDTO(id, pw));
		
		System.out.println(login);
		
		if(login) {
			HttpSession session = request.getSession();
			session.setMaxInactiveInterval(30);
			session.setAttribute("login", new LoginDTO(id, null));
			
			return new CommandAction(true, "list.do");
		}
		return new CommandAction(true, "loginui.do");
	}
}