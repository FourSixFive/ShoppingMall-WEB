package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.GoodsDAObatis;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.GoodsVO;
import kr.ac.kopo.vo.MemberVO;

public class MyPageController implements Controller {
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("userInfo");
		
		if(member==null) {
			return "/unlogged.jsp";
		}
		GoodsDAObatis goodsbatis = new GoodsDAObatis();
		List<GoodsVO> list = goodsbatis.basketinfo(member.getId());
		
		request.setAttribute("myPageUser", member);
		request.setAttribute("basketCnt", list.size());
		
		return "/myPage.jsp";
	}
}
