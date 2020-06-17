package kr.co.travel2.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.travel2.dao.BoardDAO;
import kr.co.travel2.domain.Command;
import kr.co.travel2.domain.CommandAction;
import kr.co.travel2.domain.PageTO;
import kr.co.travel2.domain.SiteDTO;

public class ListPageCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String scurPage = request.getParameter("curPage");	
		int curPage = 1;
		if (scurPage != null) {
			curPage = Integer.parseInt(scurPage);
		}
		String sid = request.getParameter("sid");
		
		BoardDAO dao = new BoardDAO();
		PageTO to = dao.page(curPage, sid);
		List<SiteDTO> siteList = dao.site();
				
		request.setAttribute("to", to);
		request.setAttribute("list", to.getList());
		request.setAttribute("siteList", siteList);
		request.setAttribute("sid", sid);
		
		return new CommandAction(false, "list.jsp");
	}
}