package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.dao.BoardDAObatis;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.BoardVO;

public class AdmincontactCheckController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		BoardDAObatis boardbatis = new BoardDAObatis();
		List<BoardVO> boardList = boardbatis.contactList();
		
		request.setAttribute("boardList", boardList);
		
		return "/AdmincontactCheck.jsp";
	}
}
