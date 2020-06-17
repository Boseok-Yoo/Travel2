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
import kr.co.travel2.command.ReadCommand;
import kr.co.travel2.command.ReplyCommand;
import kr.co.travel2.command.ReplyUICommand;
import kr.co.travel2.command.UpdateCommand;
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
	public FrontController() {}

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
		} else if(sp.equalsIgnoreCase("/delete.do")) {
			com = new DeleteCommand();
		} else if(sp.equalsIgnoreCase("/replyui.do")) {
			com = new ReplyUICommand();
		} else if(sp.equalsIgnoreCase("/reply.do")) {
			com = new ReplyCommand();
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