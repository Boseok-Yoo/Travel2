package kr.co.board2.command;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.domain.Command;
import kr.co.domain.CommandAction;

public class FileCommand implements Command{

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String realPath = request.getSession().getServletContext().getRealPath("/img");
		
		
		File uploadFolder = new File(realPath);
		if (!uploadFolder.exists()) {
			uploadFolder.mkdir();
		}
		
		int fNum;
		String fName = "";
		String ogFName = "";
		String url = "";
		
		MultipartRequest multi = new MultipartRequest(request, realPath, 10*1024*1024, "utf-8", new DefaultFileRenamePolicy());
		
		String sFNum = multi.getParameter("fNum");
		fNum = 0;
		if (sFNum != null) {
			fNum = Integer.parseInt(sFNum);
		}
		fName = multi.getFilesystemName("file");
		ogFName = multi.getOriginalFileName("file");
		
		request.setAttribute("fName", fName);
		request.setAttribute("ogFName", ogFName);
		
		return new CommandAction(false, "");
	}
}