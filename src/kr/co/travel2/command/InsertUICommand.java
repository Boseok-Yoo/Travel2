package kr.co.travel2.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.travel2.domain.Command;
import kr.co.travel2.domain.CommandAction;
import kr.co.travel2.domain.LoginDTO;

public class InsertUICommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	      HttpSession session = request.getSession(false);
	      
	      if (session != null) {
	         LoginDTO login = (LoginDTO) session.getAttribute("login");
	         if (login == null) {
	            return new CommandAction(true, "loginui.do");
	         }
	      }
		return new CommandAction(false, "insert.jsp");
	}
}