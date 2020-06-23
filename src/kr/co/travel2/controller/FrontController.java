package kr.co.travel2.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.travel2.command.DeleteCommand;
import kr.co.travel2.command.InsertCommand;
import kr.co.travel2.command.InsertUICommand;
import kr.co.travel2.command.ListPageCommand;
import kr.co.travel2.command.LoginCommand;
import kr.co.travel2.command.LoginUICommand;
import kr.co.travel2.command.LogoutCommand;
import kr.co.travel2.command.ProfileCommand;
import kr.co.travel2.command.ReadCommand;
import kr.co.travel2.command.ReplyCommand;
import kr.co.travel2.command.ReplyUICommand;
import kr.co.travel2.command.SelectCommand;
import kr.co.travel2.command.SignoutCommand;
import kr.co.travel2.command.SignupCommand;
import kr.co.travel2.command.SignupUICommand;
import kr.co.travel2.command.UpdateCommand;
import kr.co.travel2.command.UpdateMemberCommand;
import kr.co.travel2.command.UpdateMemberUICommand;
import kr.co.travel2.command.UpdateUICommand;
import kr.co.travel2.domain.Command;
import kr.co.travel2.domain.CommandAction;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontController() {
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		String ctxp = request.getContextPath();
		String sp = uri.substring(ctxp.length());

		Command com = null;
		if (sp.equalsIgnoreCase("/list.do")) {
			com = new ListPageCommand();
		} else if (sp.equalsIgnoreCase("/insertui.do")) {
			com = new InsertUICommand();
		} else if (sp.equalsIgnoreCase("/insert.do")) {
			com = new InsertCommand();
		} else if (sp.equalsIgnoreCase("/read.do")) {
			com = new ReadCommand();
		} else if (sp.equalsIgnoreCase("/updateui.do")) {
			com = new UpdateUICommand();
		} else if (sp.equalsIgnoreCase("/update.do")) {
			com = new UpdateCommand();
		} else if (sp.equalsIgnoreCase("/delete.do")) {
			com = new DeleteCommand();
		} else if (sp.equalsIgnoreCase("/replyui.do")) {
			com = new ReplyUICommand();
		} else if (sp.equalsIgnoreCase("/reply.do")) {
			com = new ReplyCommand();
		} else if (sp.equalsIgnoreCase("/loginui.do")) {
			com = new LoginUICommand();
		} else if (sp.equalsIgnoreCase("/login.do")) {
			com = new LoginCommand();
		} else if (sp.equalsIgnoreCase("/logout.do")) {
			com = new LogoutCommand();
		} else if (sp.equalsIgnoreCase("/signupui.do")) {
			com = new SignupUICommand();
		} else if (sp.equalsIgnoreCase("/signup.do")) {
			com = new SignupCommand();
		}  else if (sp.equalsIgnoreCase("/select.do")) {
			com = new SelectCommand();
		} else if (sp.equalsIgnoreCase("/signout.do")) {
			com = new SignoutCommand();
		} else if (sp.equalsIgnoreCase("/updatememberui.do")) {
			com = new UpdateMemberUICommand();
		} else if (sp.equalsIgnoreCase("/updatemember.do")) {
			com = new UpdateMemberCommand();
		} else if (sp.equalsIgnoreCase("/profile.do")) {
			com = new ProfileCommand();
		}
		if (com != null) {
			CommandAction action = com.execute(request, response);
			if (action.isRedirect()) {
				response.sendRedirect(action.getWhere());
			} else {
				request.getRequestDispatcher(action.getWhere()).forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}