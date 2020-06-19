package kr.co.travel2.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.travel2.domain.Command;
import kr.co.travel2.domain.CommandAction;

public class LoginUICommand implements Command{

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		return new CommandAction(false, "list.do");
	}
}