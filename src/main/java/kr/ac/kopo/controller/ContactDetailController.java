package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.dao.BoardDAObatis;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.BoardVO;

public class ContactDetailController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int no = Integer.parseInt(request.getParameter("no"));
		BoardDAObatis boardbatis = new BoardDAObatis();
		BoardVO board = boardbatis.contactSingle(no);
		
		request.setAttribute("board", board);
		
		return "/ContactDetail.jsp";
	}
	
}
