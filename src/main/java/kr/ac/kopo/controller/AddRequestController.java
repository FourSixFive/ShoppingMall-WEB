package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.BoardDAObatis;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.BoardVO;
import kr.ac.kopo.vo.MemberVO;

public class AddRequestController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("userId");
		System.out.println(id);
		
		
		if(id.equals("")) {
			return "/unlogged.jsp";
		}
		
		String name = request.getParameter("userName");
		String title = request.getParameter("requestTitle");
		String content = request.getParameter("content");
		
		BoardVO board = new BoardVO();
		
		board.setId(id);
		board.setName(name);
		board.setTitle(title);
		board.setContent(content);
		
		BoardDAObatis boardbatis = new BoardDAObatis();
		boardbatis.insertRequest(board);
		
		return "/contact.jsp";
	}
	
}
